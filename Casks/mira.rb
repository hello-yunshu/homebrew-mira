# SPDX-License-Identifier: CC-BY-SA-4.0
#
# Mira Homebrew Cask template.
#
# The CI job `homebrew-tap` in .github/workflows/pipeline.yml reads this file,
# substitutes 1.0.1 and 2ea5353156371dd78a89f40c1c42b0c3f2a30e978a5b306373a407bb69100b21, and pushes the rendered result to
# hello-yunshu/homebrew-mira at Casks/mira.rb. Do not edit those two tokens by
# hand; the rest of the cask body can be adjusted here and will propagate on
# the next release.
cask "mira" do
  version "1.0.1"
  sha256 "2ea5353156371dd78a89f40c1c42b0c3f2a30e978a5b306373a407bb69100b21"

  url "https://github.com/hello-yunshu/mira-mouse/releases/download/app/v#{version}/Mira_macOS_#{version}_aarch64.dmg"
  name "Mira"
  desc "Plugin-driven mouse settings client"
  homepage "https://github.com/hello-yunshu/mira-mouse"

  depends_on arch: :arm64

  app "Mira.app"

end
