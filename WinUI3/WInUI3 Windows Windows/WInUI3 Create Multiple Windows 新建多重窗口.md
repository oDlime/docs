# WInUI3 Create Multiple Windows 新建多重窗口

```csharp
// C# code to create a new window
var newWindow = WindowHelper.CreateWindow();
var rootPage = new NavigationRootPage();
rootPage.RequestedTheme = ThemeHelper.RootTheme;
newWindow.Content = rootPage;
newWindow.Activate();

// C# code to navigate in the new window
var targetPageType = typeof(NewControlsPage);
string targetPageArguments = string.Empty;
rootPage.Navigate(targetPageType, targetPageArguments);
```
