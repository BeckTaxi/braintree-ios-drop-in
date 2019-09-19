source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '9.0'
inhibit_all_warnings!

workspace 'BraintreeDropIn.xcworkspace'

# ignore all warnings from all pods
inhibit_all_warnings!

$bt_git = 'https://github.com/BeckTaxi/braintree_ios.git'
$bt_commit = '6e959823f468d408d0362cbbf6c1c57aa16a23f5'

target 'DropInDemo' do
  pod 'AFNetworking'
  pod 'CardIO'
  pod 'PureLayout'
  pod 'InAppSettingsKit'

  pod 'ActionSheetPicker-3.0'
  pod "BraintreeDropIn", :path => "./"

  pod 'BraintreeCore', :git => $bt_git, :commit => $bt_commit
  pod 'BraintreeCard', :git => $bt_git, :commit => $bt_commit
  pod 'BraintreePaymentFlow', :git => $bt_git, :commit => $bt_commit
  pod 'BraintreeUnionPay', :git => $bt_git, :commit => $bt_commit
  pod 'BraintreeApple-Pay', :git => $bt_git, :commit => $bt_commit
  pod 'BraintreePayPal', :git => $bt_git, :commit => $bt_commit
  pod 'BraintreeVenmo', :git => $bt_git, :commit => $bt_commit
end

target 'BraintreeUIKit' do
  pod 'ActionSheetPicker-3.0'
end

target 'BraintreeDropIn' do
  pod 'BraintreeCore', :git => $bt_git, :commit => $bt_commit
  pod 'BraintreeCard', :git => $bt_git, :commit => $bt_commit
  pod 'BraintreePaymentFlow', :git => $bt_git, :commit => $bt_commit
  pod 'BraintreeUnionPay', :git => $bt_git, :commit => $bt_commit
  pod 'BraintreeApple-Pay', :git => $bt_git, :commit => $bt_commit
  pod 'BraintreePayPal', :git => $bt_git, :commit => $bt_commit
  pod 'BraintreeVenmo', :git => $bt_git, :commit => $bt_commit
end

abstract_target 'Tests' do
  pod 'Specta'
  pod 'Expecta'
  pod 'OCMock'
  pod 'OHHTTPStubs'

  target 'UnitTests'
end
