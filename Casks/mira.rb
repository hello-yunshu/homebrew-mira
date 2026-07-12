# SPDX-License-Identifier: CC-BY-SA-4.0
#
# Mira Homebrew Cask template.
#
# The CI job `homebrew-tap` in .github/workflows/pipeline.yml reads this file,
# substitutes 0.6.8 and de12ba04e8267170e1c808daf2eabc59bc3854d62f49ba4d3368c06de2099d28, and pushes the rendered result to
# hello-yunshu/homebrew-mira at Casks/mira.rb. Do not edit those two tokens by
# hand; the rest of the cask body can be adjusted here and will propagate on
# the next release.
cask "mira" do
  version "0.6.8"
  sha256 "de12ba04e8267170e1c808daf2eabc59bc3854d62f49ba4d3368c06de2099d28"

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
