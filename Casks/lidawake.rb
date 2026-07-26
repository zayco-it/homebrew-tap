cask "lidawake" do
  version "1.1.3"
  sha256 "3195fd400278075e9ee0fba96cb8044781eb3f90f93b0a6fa16b8c8521ef1d96"

  url "https://github.com/zayco-it/lidawake/releases/download/v#{version}/lidawake-#{version}.dmg",
      verified: "github.com/zayco-it/lidawake/"
  name "lidawake"
  desc "Keep your Mac awake with the lid closed"
  homepage "https://zayco.it/lidawake/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "lidawake.app"

  caveats <<~EOS
    lidawake installs a small privileged helper the first time you turn it on
    (you approve it once in System Settings). To remove it completely, choose
    "Uninstall lidawake…" from lidawake's menu before running `brew uninstall`.
  EOS
end
