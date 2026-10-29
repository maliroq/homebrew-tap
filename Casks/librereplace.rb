cask "librereplace" do
  version "0.1.0-preview.1"
  sha256 "48579e6578dba7bea82d4a93a0771689d169a430a38d30f3b34cb877ced6611e"

  url "https://github.com/maliroq/librereplace/releases/download/v#{version}/LibreReplace-v#{version}.dmg"
  name "LibreReplace"
  desc "Evidence-backed open-source replacements for paid apps"
  homepage "https://github.com/maliroq/librereplace"

  depends_on macos: :sonoma

  app "LibreReplace.app"

  zap :not_required

  caveats <<~EOS
    LibreReplace is open source and ad-hoc signed, but this preview is not Apple-notarized.
    If macOS blocks the downloaded app, try opening LibreReplace once, then use
    System Settings > Privacy & Security > Open Anyway for LibreReplace and confirm.
    This cask does not remove quarantine attributes or disable Gatekeeper.
    Prefer not to approve a downloaded non-notarized app? Build locally from source:
    https://github.com/maliroq/librereplace#install
  EOS
end
