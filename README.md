# flutter_go_router_paths

Flutter project to reproduce go_router deep link issue on Android & iOS:

# Android

1. Build & run the app on Android.
2. Once app is running open terminal and run command:
   `adb shell am start -a android.intent.action.VIEW -d "myApp:/screenA"`
3. Observe that "screen A" is opened.
4. Go back to initial screen & run:
   `adb shell am start -a android.intent.action.VIEW -d "myApp://screenA"`
5. Nothing happens.
6. Close the app entirely and run:
   `adb shell am start -a android.intent.action.VIEW -d "myApp://screenA"`
7. App is running with home screen opened.

# iOS (same behaviour)

1. Build & run the app on iOS.
2. Once app is running open terminal and run command:
   `xcrun simctl openurl booted myApp:/screenA`
3. Observe that "screen A" is opened.
4. Go back to initial screen & run:
   `xcrun simctl openurl booted myApp://screenA`
5. Nothing happens.
6. Close the app entirely and run:
   `xcrun simctl openurl booted myApp://screenA`
7. App is running with home screen opened.

``Expected behaviour:
On steps 5 & 7 it should open "Screen A"
