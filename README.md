# Rules Pigz

This project is not affiliated with `pigz`

It exposes [`pigz`](https://github.com/madler/pigz) as a bazel toolchain

# Usage

In `WORKSPACE`:

```
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_pigz",
    url = "https://github.com/jchorl/rules_pigz/archive/v0.0.5.tar.gz",
    sha256 = "226ee2f22e8ae10f098081c15c24faccf98ebbcefd038cb6f54d977ed310e966",
    strip_prefix = "rules_pigz-0.0.5"
)
load(
    "@rules_pigz//:repositories.bzl",
    pigz_repositories = "repositories",
)
pigz_repositories()

load(
    "@rules_pigz//:toolchain.bzl",
    pigz_toolchain_configure = "toolchain_configure",
)
pigz_toolchain_configure()
```
