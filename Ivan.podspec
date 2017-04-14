Pod::Spec.new do |s|
    s.name         = 'Ivan'
    s.version      = '1.0.0'
    s.summary      = 'An easy way to create project'
    s.homepage     = "https://github.com/wyw1984/Ivan"
    s.license      = 'MIT'
    s.authors      = {"qq2126724184" => "2126724184@qq.com" } 
    s.platform     = :ios, '8.0'
    s.source       = {:git => 'https://github.com/wyw1984/Ivan.git', :tag => s.version}
    s.source_files = 'Ivan/**/*.{h,m}'
    s.requires_arc = true
end
