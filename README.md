# PullToRefresh

A twitter-style pull-to-refresh NSScrollView with the added functionality of delegate protocols.

Based on:
[Leah Culver's PullToRefresh](https://github.com/leah/PullToRefresh "Leah Culver's PullToRefresh")
and [Alex Zielenski's ScrollToRefresh](https://github.com/alexzielenski/ScrollToRefresh "Alex Zielenski's ScrollToRefresh")

## Key Features
* Elastic Scroll
* Added optional delegate protocol method: ptrScrollViewDidTriggerRefresh:(id)sender
	- This method gets called when the user scrolls beyond the set bounds.

## Directions
1. Link against the QuartzCore framework (under Targets > Build Phases > Link Binarry With Libraries).
2. Copy the following files to your project:
	- PullToRefreshClipView.h/PullToRefreshClipView.m;
	- PullToRefreshScrollView.h/PullToRefreshScrollView.m;
	- PullToRefreshDelegate.h;
	- pull-to-refresh-arrow.png and;
	- release-to-refresh.png.
3. Add a TableView or OutlineView from the Object Library to your nib file and subclass the ScrollView as a PullToRefreshScrollView.
4. Create an outlet in your controller:
	```
	@property (weak) IBOutlet PullToRefreshScrollView *ptrScrollView;
	```
5. Set the delegate:
	```
	- (void)awakeFromNib {
		NSLog(@"awake from nib");
		[_ptrScrollView setDelegate:self];
	}
	```
6. Add the delegate method:
	```
	- (void)ptrScrollViewDidTriggerRefresh:(id)sender {
		NSLog(@"This is called by the PullToRefresh delegate protocol");
	}
	```
7. Customize the delegate method as needed.