Pod::Spec.new do |s|
  s.name             = "URBNShareKit"
  s.version          = "0.2"
  s.summary          = "URBNShareKit makes using the UIActivityViewController to share content a breeze. iOS 7+"
  s.homepage         = "https://github.com/urbn/URBNShareKit"
  s.license          = 'MIT'
  s.author           = { "urbn" => "jgrandelli@urbn.com" }
  s.source           = { :git => "https://github.com/urbn/URBNShareKit.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'URBNShareKit' => ['Pod/Assets/*']
  }
end
