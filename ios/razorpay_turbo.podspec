#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint razorpay_turbo.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'razorpay_turbo'
  s.version          = '1.3.2'
  s.summary          = 'Flutter plugin for Razorpay Custom SDK.'
  s.description      =  'Flutter plugin for Razorpay Custom SDK.'
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Razorpay' => 'support@razorpay.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '10.0'

  # s.vendored_frameworks = 'Frameworks/Razorpay.xcframework'
  #s.dependency 'razorpay-customui-pod'
  s.vendored_frameworks = [
    'Frameworks/Razorpay.xcframework',
    'Frameworks/TurboUpiPluginUAT.framework',
    'Frameworks/RazorpayTurboUPI.framework',
    'Frameworks/RazorpayTurboUPIUI.framework',
    'Frameworks/CommonLibrary.framework',
    'Frameworks/OlivePayLibrary.framework',
    'Frameworks/Sentry.framework'
    ]
  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.swift_version = '5.0'


end