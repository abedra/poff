class Poff::InitializerGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)
  
  def copy_initializer
    copy_file "poff.rb", "config/initializers/poff.rb"
  end
end
