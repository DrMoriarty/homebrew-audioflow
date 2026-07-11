cask "audioflow" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.1"
  sha256 arm:   "9f92f3fc8241b989dc7c7417d15ee57c3a004ffddd473555d9e17855f23761e7",
         intel: "b6cc06b6d51151e030b9c8b20692e98b573afc73c73ac7302ffd032e49f3e9f9"

  url "https://github.com/DrMoriarty/AudioFlow3/releases/download/v#{version}/AudioFlow3-#{version}-macos-#{arch}.zip"
  name "AudioFlow"
  desc "Lightweight, real time system audio equalizer"
  homepage "https://github.com/DrMoriarty/AudioFlow"

  depends_on :macos
  depends_on cask: "blackhole-2ch"

  app "AudioFlow3.app"

  caveats "If you just installed blackhole-2ch you should reboot the system to take effect."
end
