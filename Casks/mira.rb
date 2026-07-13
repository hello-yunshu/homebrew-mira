# SPDX-License-Identifier: CC-BY-SA-4.0
#
# Mira Homebrew Cask template.
#
# The CI job `homebrew-tap` in .github/workflows/pipeline.yml reads this file,
# substitutes 0.6.10 and d4ba37f8ea958d8d4148a866facd76f41c00d6cf527f6c9259cb367b788b4dcf, and pushes the rendered result to
# hello-yunshu/homebrew-mira at Casks/mira.rb. Do not edit those two tokens by
# hand; the rest of the cask body can be adjusted here and will propagate on
# the next release.
cask "mira" do
  version "0.6.10"
  sha256 "d4ba37f8ea958d8d4148a866facd76f41c00d6cf527f6c9259cb367b788b4dcf"

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
