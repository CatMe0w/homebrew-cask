cask "icalingua-plus-plus" do
  version "2.10.3"
  sha256 "9461782577e6fe16d9fb8c8ac25fdc832b56b6cadeed73ef0e79e5e041ea9c84"

  url "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus/releases/download/v#{version}/Icalingua++-#{version}-universal.dmg"
  name "Icalingua++"
  desc "A client for QQ and more."
  homepage "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Icalingua++.app"

  zap trash: [
    "~/Library/Application Support/icalingua",
    "~/Library/Preferences/Icalingua.plist",
    "~/Library/Saved Application State/Icalingua.savedState",
  ]
end
