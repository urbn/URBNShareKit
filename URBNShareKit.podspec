Pod::Spec.new do |s|
  s.name             = "URBNShareKit"
  s.version          = "0.1"
  s.summary          = "URBNShareKit makes using the UIActivityViewController to share content a breeze."
  s.description      = <<-DESC
                       URBNShareKit is a subclass of UIActivityViewController which makes it easier to display & fill the native iOS share sheet with share activities for iOS 7+. Note some activities will only display on iOS 8+ devices.
		       It also, under the scenes will create and handle the UIActivityItemProviders. You just pass the appropriate body text, image, and/or Url.
                       DESC
  s.homepage         = "https://github.com/urbn/URBNShareKit"
  s.license          = 'MIT'
  s.author           = { "urbn" => "jgrandelli@urbn.com" }
  s.source           = { :git => "https://github.com/urbn/URBNShareKit.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'URBNShareKit' => ['Pod/Assets/*.png']
  }
end