Pod::Spec.new do |s|
    s.name         = 'DeallocCallback'
    s.version      = '0.0.1'
    s.summary      = '自动调用回调，当这个对象被销毁的时候'
    s.homepage     = 'https://github.com/irobbin1024/DeallocCallback.git'
    s.license      = 'Apache'
    s.authors      = { 'irobbin1024' => 'irobbin1024@gmail.com' }
    s.platform     = :ios, '6.0'
    s.source       = { :git => 'https://github.com/irobbin1024/DeallocCallback.git', :tag => s.version.to_s }
    s.source_files = 'DeallocCallback/*.{h,m}'
    s.framework    = 'UIKit'
    s.requires_arc = true
end
