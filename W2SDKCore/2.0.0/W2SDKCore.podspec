#
#  Be sure to run `pod spec lint W2SDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name = "W2SDKCore"
  s.version = "2.0.0"
  s.summary = "W2Global SDK Core"

  s.description = "W2Global SDK Core"

  s.homepage = "https://www.w2globaldata.com/"

  s.license = "Copyright 2021 W2Global. All rights reserved."

  s.author = { "W2" => "support@w2globaldata.com" }
  s.platform = :ios, "11.1"

  s.source = {
    :git => "https://github.com/W2-Global-Data/cocoapods-feed.git",
    :branch => "release/2.0.0",
  }

  s.vendored_frameworks = 'W2SDKCore.framework'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.swift_versions = '5.5'

  # Acuant
  s.dependency 'AcuantiOSSDKV11/AcuantHGLiveness', '11.5.4'
  s.dependency 'AcuantiOSSDKV11/AcuantDocumentProcessing', '11.5.4'
  s.dependency 'AcuantiOSSDKV11/AcuantFaceMatch', '11.5.4'
  s.dependency 'AcuantiOSSDKV11/AcuantImagePreparation', '11.5.4'

end
