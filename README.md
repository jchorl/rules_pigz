# Rules Pigz

This project is not affiliated with `pigz`

It exposes [`pigz`](https://github.com/madler/pigz) as a bazel toolchain

# Usage

In `WORKSPACE`:

```
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_pigz",
    url = "https://github.com/jchorl/rules_pigz/archive/v0.0.2.tar.gz",
    sha256 = "2fa720a32d0cc60fa30ace3b0a2b4d8d33d42d80ec8fb3646863bd798ba7fc6d",
    strip_prefix = "rules_pigz-0.0.2"
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
