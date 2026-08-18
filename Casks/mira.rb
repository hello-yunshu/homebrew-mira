# SPDX-License-Identifier: CC-BY-SA-4.0
#
# Mira Homebrew Cask template.
#
# The CI job `homebrew-tap` in .github/workflows/pipeline.yml reads this file,
# substitutes 1.2.4 and 683dc33fb6ab1e0b25f4f47ee26361ab1b6a33db8945d9c2b93c7d68e2ecb13f, and pushes the rendered result to
# hello-yunshu/homebrew-mira at Casks/mira.rb. Do not edit those two tokens by
# hand; the rest of the cask body can be adjusted here and will propagate on
# the next release.
cask "mira" do
  version "1.2.4"
  sha256 "683dc33fb6ab1e0b25f4f47ee26361ab1b6a33db8945d9c2b93c7d68e2ecb13f"

  url "https://github.com/hello-yunshu/mira-mouse/releases/download/app/v#{version}/Mira_macOS_#{version}_aarch64.dmg"
  name "Mira"
  desc "Plugin-driven mouse settings client"
  homepage "https://github.com/hello-yunshu/mira-mouse"

  depends_on arch: :arm64

  app "Mira.app"

end
