There's not much in the repo. Just read this readme file :D

Though the project name is TryXcodeBot, I gave up using Xcode Bot (because at the moment I couldn't make the TestFlight upload part to work! because of code signing and provisioning profile issues). So I switched to [Jenkins](https://jenkins-ci.org/).

For Apple TestFlight upload, there are a few alternatives, e.g. [nomad/shenzhen](https://github.com/nomad/shenzhen), [KrauseFx/deliver](https://github.com/KrauseFx/deliver), and [fastlane/pilot](https://github.com/fastlane/pilot). They are very similar, just choose what you like.

# Jenkins + nomad/shenzhen

### Requirements

- Jenkins - instead of the official one, use this app to install https://github.com/stisti/jenkins-app
- Jenkins plugins:
	- Github plugin
	- Git plugin
	- CocoaPods Jenkins Integration
	- Xcode integration
- nomad/shenzhen - https://github.com/nomad/shenzhen

### Jenkins job setup

- coming soon

### Pitfalls

- Apple ID's password can’t have special characters. See https://github.com/nomad/shenzhen/issues/189
- In Jenkins job config, go to "Build > Xcode > Advanced Xcode build options > Custom xcodebuild arguments", and add `CODE_SIGN_RESOURCE_RULES_PATH=$(SDKROOT)/ResourceRules.plist`. See http://stackoverflow.com/questions/26516442/how-do-we-manually-fix-resourcerules-plist-cannot-read-resources-error-after

### Reference

- **Documentations of each Jenkins plugins** - They are surprisingly detailed and useful. Since most tutorials on the internet are outdated. Most of the UI are now different than in those tutorial screenshots. But in the actual plugin documentations will be updated. So go check them out when you want to try new plugins!