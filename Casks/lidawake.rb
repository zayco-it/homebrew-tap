cask "lidawake" do
  version "1.4.8"
  sha256 "bced59145d77a35b9c5080f225b6fbf23fac63690272986a4dcc2b8e9c733529"

  url "https://github.com/zayco-it/lidawake/releases/download/v#{version}/lidawake-#{version}.dmg",
      verified: "github.com/zayco-it/lidawake/"
  name "lidawake"
  desc "Keep your Mac awake with the lid closed, with automatic safety cut-offs"
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
