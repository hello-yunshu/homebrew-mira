# homebrew-mira

Homebrew tap for [Mira](https://github.com/hello-yunshu/mira-mouse) — a plugin-driven mouse settings client for macOS.

## 安装

```bash
brew tap hello-yunshu/mira
brew install --cask mira
```

升级：

```bash
brew upgrade --cask mira
```

## 仓库结构

```
Casks/
└── mira.rb    # Mira Cask 定义
```

Cask 的 `version` 和 `sha256` 由主仓库 [mira-mouse](https://github.com/hello-yunshu/mira-mouse) 的 CI（`.github/workflows/pipeline.yml` → `homebrew-tap` job）在每次发布时自动同步，请勿手动修改。

## 手动 tap 更新

如果发布后 Cask 未及时更新，可手动触发：

```bash
brew untap hello-yunshu/mira
brew tap hello-yunshu/mira
```

## 许可证

[AGPL-3.0-or-later](./LICENSE) — 与主项目保持一致。
