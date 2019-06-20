# PageControllerComplicationLaunchBug

This project shows a bug in watchOS 6 beta 2.

This bug applies to watchOS apps using a page-based layout using a "next page" segue in Interface.storyboard, and which also contain a watchface complication

When tapping on the complication from the watch face to launch the app, the following error is printed in the console:

`-[SPApplicationDelegate application:openURL:sourceApplication:annotation:]:1178: Couldn't find the SPInterfaceViewController. Bailing`

The app then becomes totally unresponsive, until the user has hit the home button on the watch to return to the watch face, then presses it again to navigate to the list of apps, and launches the app from the list of apps. (On the simulator, a nearly blank screen is shown, while on a Series 1 watch, the last visible app screen is shown, but is unresponsive to touch.)

This sample app only contains the modular small watchface complication type, but it appears to apply to any complication type.  

## Steps To Reproduce

1. Initially launch the app from the app launcher or from Xcode, verifying that it functions. This app has a two-page layout, labeled "Page 1" and "Page 2".
2. Add a modular watchface to the watch, and add the complication for this app to the modular small slot. (The complication icon looks like a blue breastfeeding icon - this is a random image selected.)
3. Tap the complication to attempt to launch this app. Observe the error printed in the console, and observe that the app becomes unresponsive.

