
Pod::Spec.new do |s|
  s.name         = 'SnapperCore'
  s.version      = '0.1.0'
  s.summary      = 'Core components of Snapper, a snapshot testing tool.'
  s.homepage     = 'https://github.com/kyleve/Snapper'
  s.license      = 'Apache License, Version 2.0'
  s.author       = { 'Kyle' => 'k@squareup.com' }
  s.source       = { git: 'https://github.com/kyleve/Snapper.git', tag: "#{s.version}" }

  s.ios.deployment_target = '14.0'

  s.swift_versions = ['5.0']

  s.source_files = 'SnapperCore/Sources/**/*.{swift}'

  s.framework = 'SwiftUI'

  unless ENV['SNAPPER_PUBLISHING']

    # These tests can only be run locally, because they depend on local pods.

    s.test_spec 'Tests' do |test_spec|
      test_spec.source_files = 'Snapper/Tests/**/*.{swift}'
      test_spec.ios.resource_bundle = { 'SnapperTestsResources' => 'Snapper/Tests/Resources/**/*.*' }

      test_spec.framework = 'XCTest'

      test_spec.requires_app_host = true
    end
  end
end
