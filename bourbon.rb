class Bourbon < Locomotive::Wagon::Generators::Site::Base
  def self.source_root
    File.join(File.dirname(__FILE__))
  end

  # Override super so we can exclude certain files/dirs in new wagon site
  def copy_sources
    directory('.', self.destination, {
      recursive:        true,
      exclude_pattern:  /\.git\/|bourbon\.rb/,  # Don't copy .git dir or this file
      name:             self.name,
      version:          Locomotive::Wagon::VERSION
    })
  end
end

Locomotive::Wagon::Generators::Site.register(:bourbon, Bourbon, %{
  A site built on the shoulders of Bourbon, Bitters, Breakpoint & Singularity.
})
