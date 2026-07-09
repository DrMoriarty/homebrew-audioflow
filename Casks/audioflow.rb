cask "audioflow" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.0"
  sha256 arm:   "e3cb940f0aaa26a931cff9ce5c82b9ff7978bbb459aeb8e32693fc19db4843e0",
         intel: "344ed13959a27548ded95ec3119aecb743505d1367d677b1083edb576a63c32f"

  url "https://github.com/DrMoriarty/AudioFlow3/releases/download/v#{version}/AudioFlow3-#{version}-macos-#{arch}.zip"
  name "AudioFlow"
  desc "Lightweight, real time system audio equalizer"
  homepage "https://github.com/DrMoriarty/AudioFlow"

  depends_on :macos
  depends_on cask: "blackhole-2ch"

  app "AudioFlow3.app"

  caveats "If you just installed blackhole-2ch you should reboot the system to take effect."
end
