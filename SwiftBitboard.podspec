Pod::Spec.new do |spec|
    spec.name         = 'SwiftBitboard'
    spec.version      = '0.0.3'
    spec.license      = { :type => 'MIT' }
    spec.homepage     = 'https://github.com/nc163/SwiftBitboard/README.md'
    spec.authors      = { 'nc163' => 'kou1992@gmail.com' }
    spec.source       = { :git => 'https://github.com/nc163/SwiftBitboard.git', :tag => 'v0.0.1' }
    spec.source_files = 'Sources/BitBoard/*.swift'
    spec.framework    = 'SystemConfiguration'
    spec.requires_arc = true
    spec.swift_version = "5.0"

    spec.test_spec 'Tests' do |test_spec|
        test_spec.source_files = 'Tests/SwiftBitboardUnitTests/*.swift', 'Tests/SwiftBitboardUnitTests/ThirdParty/*.swift', 'Tests/SwiftBitboardUnitTests/Helper/*.swift'
        test_spec.dependency 'SwiftBitboardUnitTests' # This dependency will only be linked with your tests.
    end
end
