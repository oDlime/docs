# WinUI3 Connected Animation 连接动画

```csharp
// Prepare animation on Source page
private void NavigateButton_Click(object sender, RoutedEventArgs e)
{
    ConnectedAnimationService.GetForCurrentView().PrepareToAnimate("ForwardConnectedAnimation", SourceElement);
    Frame.Navigate(typeof(DestinationPage), null, new SuppressNavigationTransitionInfo());
}

// Start animation on Destination page
protected override void OnNavigatedTo(NavigationEventArgs e)
{
    base.OnNavigatedTo(e);

    var anim = ConnectedAnimationService.GetForCurrentView().GetAnimation("ForwardConnectedAnimation");
    if (anim != null)
    {
        anim.TryStart(DestinationElement);
    }
}
```
