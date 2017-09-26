# once disable
# swipe between 2 pages
defaults write -g AppleEnableSwipeNavigateWithScrolls -boolean false
# swipe between fulscreen apps
defaults write "com.apple.AppleMultitouchTrackpad" TrackpadFourFingerHorizSwipeGesture -int 0
defaults write "com.apple.driver.AppleBluetoothMultitouch.trackpad" TrackpadFourFingerHorizSwipeGesture -int 0
#  notification center
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 0
# mission controll
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerVertSwipeGesture -int 0
defaults write com.apple.dock showMissionControlGestureEnabled -boolean false
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerVertSwipeGesture -int 0

# apps expose
defaults write com.apple.AppleMultitouchTrackpad  TrackpadFourFingerVertSwipeGesture -int 0
defaults write com.apple.AppleMultitouchTrackpad  TrackpadThreeFingerVertSwipeGesture -int 0
defaults write com.apple.dock  showAppExposeGestureEnabled -boolean false
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad  TrackpadFourFingerVertSwipeGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad  TrackpadThreeFingerVertSwipeGesture -int 0

# launch pad
defaults write com.apple.dock showLaunchpadGestureEnabled -boolean false

# show desktop
defaults write com.apple.AppleMultitouchTrackpad TrackpadFiveFingerPinchGesture = 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerPinchGesture = 0
defaults write com.apple.dock showDesktopGestureEnabled = 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFiveFingerPinchGesture = 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerPinchGesture = 0

# re-enable
# swipe between 2 pages
defaults write -g AppleEnableSwipeNavigateWithScrolls -boolean true
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -int 0

# swipe between fulscreen apps
defaults write "com.apple.AppleMultitouchTrackpad" TrackpadFourFingerHorizSwipeGesture -int 2
defaults write "com.apple.driver.AppleBluetoothMultitouch.trackpad" TrackpadFourFingerHorizSwipeGesture -int 2

# notification center
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 3
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 3

# mission controll
defaults write com.apple.AppleMultitouchTrackpad  TrackpadFourFingerVertSwipeGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad  TrackpadThreeFingerVertSwipeGesture -int 0
defaults write com.apple.dock  showMissionControlGestureEnabled -boolean true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad  TrackpadFourFingerVertSwipeGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad  TrackpadThreeFingerVertSwipeGesture -int 0

# apps expose
defaults write com.apple.AppleMultitouchTrackpad  TrackpadFourFingerVertSwipeGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad  TrackpadThreeFingerVertSwipeGesture -int 0
defaults write com.apple.dock  showAppExposeGestureEnabled -boolean true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerVertSwipeGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -int 0

# launch pad
defaults write com.apple.dock showLaunchpadGestureEnabled -boolean true

# show desktop
defaults write com.apple.AppleMultitouchTrackpad TrackpadFiveFingerPinchGesture = 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerPinchGesture = 2
defaults write com.apple.dock showDesktopGestureEnabled = 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFiveFingerPinchGesture = 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerPinchGesture = 2
