# SPDX-License-Identifier: CC-BY-SA-4.0
#
# Mira Homebrew Cask template.
#
# The CI job `homebrew-tap` in .github/workflows/pipeline.yml reads this file,
# substitutes 0.9.12 and da884ff64e5ad4f19db46567e86997451d2ce0e7cfb864aae81c7248a7c24c3b, and pushes the rendered result to
# hello-yunshu/homebrew-mira at Casks/mira.rb. Do not edit those two tokens by
# hand; the rest of the cask body can be adjusted here and will propagate on
# the next release.
cask "mira" do
  version "0.9.12"
  sha256 "da884ff64e5ad4f19db46567e86997451d2ce0e7cfb864aae81c7248a7c24c3b"

  url "https://github.com/hello-yunshu/mira-mouse/releases/download/app/v#{version}/Mira_macOS_#{version}_aarch64.dmg"
  name "Mira"
  desc "Plugin-driven mouse settings client"
  homepage "https://github.com/hello-yunshu/mira-mouse"

  depends_on arch: :arm64

  app "Mira.app"

  caveats <<~EOS
    Mira is ad-hoc signed and not notarized. The first launch is blocked by
    Gatekeeper. Right-click Mira.app and select Open, or run:
      xattr -dr com.apple.quarantine /Applications/Mira.app
  EOS
end
