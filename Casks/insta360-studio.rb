cask "insta360-studio" do
  version "3.6.2,2021_20210310_020734:20210310.ccdb347864e767b6d9ebb50fd2c4e059"
  sha256 "1b173dbc63ae40840a8d6403f525103c8808d214e8ca387d4a8d7d769547f01a"

  url "https://res.insta360.com/static/assets/storage/#{version.after_colon.major}/#{version.after_colon.minor}/Insta360_Studio_#{version.after_comma.before_colon}_signed.pkg"
  name "Insta360 Studio"
  desc "Video and photo editor"
  homepage "https://www.insta360.com/"

  livecheck do
<<<<<<< HEAD
    url "https://openapi.insta360.com/website/appDownload/getGroupApp?group=insta360-go2&X-Language=en-us"
    strategy :page_match do |page|
      match = page.match(%r{"version":"(\d+\.\d+\.\d+)","platform":"mac".+/(\d+)/([[:xdigit:]]+)/Insta360[._-]Studio[._-](\d+[._-]\d+[._-]\d+)[._-]signed\.pkg}i)
      "#{match[1]},#{match[4]}:#{match[2]}.#{match[3]}"
    end
=======
    skip "No version information available"
>>>>>>> upstream/master
  end

  pkg "Insta360_Studio_#{version.after_comma.before_colon}_signed.pkg"

  uninstall quit:    "com.insta360.studio",
            pkgutil: [
              "com.insta360.PremierePlugin",
              "com.insta360.ThumbnailPlugin",
              "com.insta360.insta360Studio",
            ]

  zap trash: [
    "~/Library/Application Support/Insta360",
    "~/Library/Caches/Insta360",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.insta360.studio",
    "~/Library/Saved Application State/com.insta360.studio.savedState",
  ]
end
