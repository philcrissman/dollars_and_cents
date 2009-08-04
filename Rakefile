task :default => [:test, :docs]

PKG_NAME = "dollars_and_cents"
PKG_VERSION = "0.1"

desc "Build the documentation for DollarsAndCents."
task :docs do
  begin
    sh "rdoc README CHANGELOG MIT-LICENSE lib -m README -S -N"
  rescue
    puts "You'd have a lot more fun with a POSIX shell, you know."
    sh "rdoc.bat README CHANGELOG MIT-LICENSE lib -m README -S -N"
  end
end

desc "Package DollarsAndCents for distribution."
task :package => :docs do
  begin
    # This will puke on my Windows box (thanks, Cygwin), but at least it'll
    # rescue the ensuing Rake error and build it piece by piece.
    # I'm really starting to feel constrained by Windows.
    sh "rm #{PKG_NAME}-*.tar.gz"
    sh "tar czf #{PKG_NAME}-#{PKG_VERSION}.tar.gz *"
  rescue
    puts "No, seriously. Install Linux or buy a Mac. This is getting old."
    sh "del #{PKG_NAME}-*.tar.gz"
    sh "C:\\cygwin\\bin\\tar.exe cf #{PKG_NAME}-#{PKG_VERSION}.tar *"
    sh "C:\\cygwin\\bin\\gzip.exe #{PKG_NAME}-#{PKG_VERSION}.tar"
  end
end

desc "Run the DollarsAndCents unit tests."
task :test do
  sh "ruby #{File.join('test','dollars_and_cents_test.rb')}"
end
