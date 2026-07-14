# SPDX-License-Identifier: CC-BY-SA-4.0
#
# Mira Homebrew Cask template.
#
# The CI job `homebrew-tap` in .github/workflows/pipeline.yml reads this file,
# substitutes 0.8.0 and 0e35a37ec200a7b6a2cff528952b8ed0d940b8915e35318075a604b6f6f437b2, and pushes the rendered result to
# hello-yunshu/homebrew-mira at Casks/mira.rb. Do not edit those two tokens by
# hand; the rest of the cask body can be adjusted here and will propagate on
# the next release.
cask "mira" do
  version "0.8.0"
  sha256 "0e35a37ec200a7b6a2cff528952b8ed0d940b8915e35318075a604b6f6f437b2"

  url "https://github.com/hello-yunshu/mira-mouse/releases/download/app/v#{version}/Mira_macOS_#{version}_universal.dmg"
  name "Mira"
  desc "Plugin-driven mouse settings client"
  homepage "https://github.com/hello-yunshu/mira-mouse"

  app "Mira.app"

  caveats <<~EOS
    Mira is ad-hoc signed and not notarized. The first launch is blocked by
    Gatekeeper. Right-click Mira.app and select Open, or run:
      xattr -dr com.apple.quarantine /Applications/Mira.app
  EOS
end
