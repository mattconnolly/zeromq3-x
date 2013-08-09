This directory contains a prebuilt platform file for cocoapods integration.

The file "platform.hpp" is built during the make process, but is checked in so that it is available to cocoapods without needing to run the configure steps. This should be fine since cocoapods is specific to Mac/iOS platforms.

To update the "platform.hpp" file:

1. Run `./autogen.sh`
2. Run `./configure`
3. Run `cp src/platform.hpp cocoapods/platform.hpp`

