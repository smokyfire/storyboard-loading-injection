# storyboard-loading-injection

When setting up your view controller in a storyboard you lose the ability to inject things in `init`. `StoryboardLoadable` provides an alternative that works well in many cases. This is assuming that you don't use segues, but instead push your view controllers programmatically.
