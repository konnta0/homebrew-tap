# konnta0/homebrew-tap

Homebrew formulae for [konnta0](https://github.com/konnta0) projects.

## konnnyaku

Local English / Japanese live captions for Apple Silicon macOS.

```bash
brew install konnta0/tap/konnnyaku
konnnyaku setup                        # once; ~2.5 GB models
konnnyaku live --app "Google Chrome"   # or --mic / --loopback
konnnyaku captions                     # JSON for agents
```

`Formula/konnnyaku.rb` appears after the first [konnnyaku](https://github.com/konnta0/konnnyaku) `v*` release and is updated on each later tag. Full install notes: https://github.com/konnta0/konnnyaku#install-macos-apple-silicon
