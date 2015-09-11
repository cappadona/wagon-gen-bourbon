class Bourbon < Locomotive::Wagon::Generators::Site::Base
  def self.source_root
    File.join(File.dirname(__FILE__))
  end

  # Don't copy .git directory when site template is used via 'wagon init'
  def copy_sources
    directory('.', self.destination, {
      recursive:        true,
      exclude_pattern:  /\.git\//,
      name:             self.name,
      version:          Locomotive::Wagon::VERSION
    })
  end
end

Locomotive::Wagon::Generators::Site.register(:bourbon, Bourbon, %{
  A site built on the shoulders of Bourbon, Bitters, Breakpoint & Singularity.
})
