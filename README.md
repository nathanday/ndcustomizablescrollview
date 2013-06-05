ndcustomizablescrollview
========================

**NDCustomizableScrollView** is a NSScrollView subclass that lets you insert a view along side the NSScroller of a NSScrollView, for example in a paint or drawing program you could use it to add magnification controls.

Using **NDCustomizableScrollView** is very simple, use **NDCustomizableScrollView** in place of NSScrollView and assign your view to be placed to the left of the horizontal NSScroller to the property ***insertedHorizontalView***. This can be done in interface builder, creating your view in interface builder and connecting it to ***insertedHorizontalView*** outlet.

**NDCustomizableScrollView** doesn't make any assumptions about what view you assign/connect to ***insertedHorizontalView***, its up to you to link any controls up to your NSWindowController or NSViewController and do something with that user interaction. For example **NDCustomizableScrollView** doesn't implement any magnification logic for you, other than what you get from the super class NSScrollView and its super class.

Limitation
----------
Currently **NDCustomizableScrollView** only supports a single view to the left side of the horizontal NSScroller.


