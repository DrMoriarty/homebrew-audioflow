cask "audioflow" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.1"
  sha256 arm:   "d4ab3eeda01488e0e865f70cd93e7c7380784469cdfa8b2d0aad51b0a672c75d",
         intel: "ce4dfa99b6805342496b307a315816b0b072a1f6e77b635935277daa968a8075"

  url "https://github.com/DrMoriarty/AudioFlow/releases/download/2.0.1/AudioFlow-#{version}.#{arch}.tar.gz"
  name "AudioFlow"
  desc "Lightweight, real time system audio equalizer"
  homepage "https://github.com/DrMoriarty/AudioFlow"

  depends_on :macos
  depends_on cask: "blackhole-2ch"

  app "AudioFLow.app"

  caveats "If you just installed blackhole-2ch you should reboot the system to take effect."
end
