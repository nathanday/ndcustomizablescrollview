#import "NDCustomizableScrollView.h"

@interface NDCustomizableScrollView ()
{
@protected
    NSView		* __strong _insertedHorizontalView;
}

@end

@implementation NDCustomizableScrollView

@synthesize			insertedHorizontalView = _insertedHorizontalView;

#pragma mark *** View Customization ***

// An override of the NSScrollView method.
- (void)tile
{
    [super tile];
    // This class lives to put a popup button next to a horizontal scroll bar.
    NSAssert( [self hasHorizontalScroller], @"NDCustomizableScrollView doesn't support use without a horizontal scroll bar.");

	if( self.insertedHorizontalView )
	{
		// find out where horizontal scroller is.
		NSScroller		* theHorizontalScroller = self.horizontalScroller;
		NSRect			theHorizontalScrollerFrame = theHorizontalScroller.frame;
		NSRect			theInsertedViewFrame = self.insertedHorizontalView.frame;

		// Place the inserted view to the left of where the horizontal scroller will go
		if( self.insertedHorizontalView.superview != self )
			[self addSubview:self.insertedHorizontalView];
		theInsertedViewFrame.origin.x = theHorizontalScrollerFrame.origin.x;
		theInsertedViewFrame.origin.y = theHorizontalScrollerFrame.origin.y;
		theInsertedViewFrame.size.height = theHorizontalScrollerFrame.size.height;
		self.insertedHorizontalView.frame = theInsertedViewFrame;

		// Adjust the scroller's frame to make room for the zoom factor popup button next to it.
		theHorizontalScrollerFrame.origin.x += theInsertedViewFrame.size.width;
		theHorizontalScrollerFrame.size.width -= theInsertedViewFrame.size.width;
		theHorizontalScroller.frame = theHorizontalScrollerFrame;
	}
}

- (void)setNeedsDisplay:(BOOL)aFlag
{
	[super setNeedsDisplay:aFlag];
	[self.insertedHorizontalView setNeedsDisplay:aFlag];
}


@end
