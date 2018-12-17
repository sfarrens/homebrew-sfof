# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Sfof < Formula
  desc "SFoF is a friends-of-friends galaxy cluster detection algorithm that operates in either spectroscopic or photometric redshift space. The linking parameters, both transverse and along the line-of-sight, change as a function of redshift to account for selection effects.  The code is written in C++ and implements OMP to loop through the photometric redshift bins."
  homepage "https://github.com/sfarrens/sfof"
  url "https://github.com/sfarrens/sfof/archive/v1.0.1.tar.gz"
  sha256 "559df6faef1279483bc1b0b6615cbf66c47c656378ef9a40ca21e7c797ca7603"

  depends_on "cmake" => :build
  depends_on "gcc"
  depends_on "cfitsio"
  depends_on "boost"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test sfof`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
