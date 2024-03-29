#
#  Be sure to run `pod spec lint W2SDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name = "W2SDK"
  s.version = "1.9.1"
  s.summary = "W2Global SDK"

  s.description = "W2Global SDK"
  s.homepage = "https://www.w2globaldata.com/"

  s.license = "Copyright 2021 W2Global. All rights reserved."

  s.author = { "W2" => "support@w2globaldata.com" }
  s.platform = :ios, "11.1"

  s.source = {
    :git => "https://github.com/W2-Global-Data/cocoapods-feed.git",
    :branch => "release/1.9.1",
  }

  s.vendored_frameworks = "W2DocumentVerificationClient.framework",
   "W2DocumentVerificationClientCapture.framework",
   "W2FacialComparisonClient.framework",
   "W2FacialComparisonClientCapture.framework"

  s.swift_versions = '5.5'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  # Core
  s.dependency 'W2SDKCore', '1.9.1'
  
  s.subspec 'W2DocumentVerificationClient' do |w2documentverificationclient|
    w2documentverificationclient.ios.vendored_frameworks = 'W2DocumentVerificationClient.framework'
    w2documentverificationclient.dependency 'W2SDKCore'
  end

  s.subspec 'W2FacialComparisonClient' do |w2facialcomparisonclient|
    w2facialcomparisonclient.ios.vendored_frameworks = 'W2FacialComparisonClient.framework'
    w2facialcomparisonclient.dependency 'W2SDKCore'
  end

  s.subspec 'W2DocumentVerificationClientCapture' do |w2documentverificationclientcapture|
    w2documentverificationclientcapture.ios.vendored_frameworks = 'W2DocumentVerificationClientCapture.framework'
    w2documentverificationclientcapture.dependency 'W2SDKCore'
  end

  s.subspec 'W2FacialComparisonClientCapture' do |w2facialcomparisonclientcapture|
    w2facialcomparisonclientcapture.ios.vendored_frameworks = 'W2FacialComparisonClientCapture.framework'
    w2facialcomparisonclientcapture.dependency 'W2SDKCore'
  end
end
