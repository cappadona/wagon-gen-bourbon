class Bourbon < Locomotive::Wagon::Generators::Site::Base
  def self.source_root
    File.join(File.dirname(__FILE__), 'bourbon')
  end
end

Locomotive::Wagon::Generators::Site.register(:bourbon, Bourbon, %{
  A site built on the shoulders of Bourbon, Bitters, Breakpoint & Singularity.
})
