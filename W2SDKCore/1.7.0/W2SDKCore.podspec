#
#  Be sure to run `pod spec lint W2SDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name = "W2SDKCore"
  s.version = "1.7.0"
  s.summary = "W2Global SDK Core"

  s.description = "W2Global SDK Core"

  s.homepage = "https://www.w2globaldata.com/"

  s.license = "Copyright 2020 W2Global. All rights reserved."

  s.author = { "W2" => "support@w2globaldata.com" }
  s.platform = :ios, "11.1"

  s.source = {
    :git => "https://github.com/W2-Global-Data/cocoapods-feed.git",
    :branch => "release/1.7.0",
  }

  s.vendored_frameworks = 'W2SDKCore.framework'

  s.swift_versions = '5.0'

  # Networking
  s.dependency 'Alamofire', '5.2.2'

  # UI
  s.dependency 'SnapKit', '5.0.1'

  # Acuant
  s.dependency 'AcuantiOSSDKV11', '11.4.5'

end
