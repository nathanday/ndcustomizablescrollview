#import <Cocoa/Cocoa.h>

// The name of the binding supported by this class, in addition to the ones whose support is inherited from NSScrollView.
extern NSString *NDCustomizableScrollViewFactor;

@interface NDCustomizableScrollView : NSScrollView

@property(strong,nonatomic)		IBOutlet	NSView		* insertedHorizontalView;
@end
