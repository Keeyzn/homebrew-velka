cask "velka" do
  version "2.0.0"
  sha256 "4ea8be5c58ec45de319e64f05cebb7ecbc8c47fdde51a34ffddd301348c0a413"

  url "https://github.com/Keeyzn/velka-app/releases/download/v#{version}/Velka-mac.dmg"
  name "Velka"
  desc "Lightweight Twitch player with video and chat in one window"
  homepage "https://keeyzn.github.io/velka-app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Velka.app"

  zap trash: "~/Library/Application Support/Velka"

  caveats <<~EOS
    Velka is not signed with a paid Apple certificate yet.
    On first launch: right-click Velka in Applications, choose Open, then confirm.
  EOS
end
