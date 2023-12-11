# Rules Pigz

This project is not affiliated with `pigz`

It exposes [`pigz`](https://github.com/madler/pigz) as a bazel toolchain

# Usage

In `WORKSPACE`:

```
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_pigz",
    url = "https://github.com/jchorl/rules_pigz/archive/v0.0.6.tar.gz",
    sha256 = "1ac164f4c16f3e8d1d84aec0e394126df5d8dc339f888bdf9eadc6725fe67246",
    strip_prefix = "rules_pigz-0.0.6"
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
