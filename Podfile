source 'https://cdn.cocoapods.org/'

platform :ios, '14.0'

project 'App/App.xcodeproj'
workspace 'App/App.xcworkspace'

use_frameworks!


def shared_app_pods
	pod 'ListableUI'
	pod 'SnapperCore', path: 'SnapperCore.podspec'
end


target 'Snapper (iOS)' do
	shared_app_pods
end


target 'Snapper (macOS)' do
	shared_app_pods
end
