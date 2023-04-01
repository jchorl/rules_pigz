# Rules Pigz

This project is not affiliated with `pigz`

It exposes [`pigz`](https://github.com/madler/pigz) as a bazel toolchain

# Usage

In `WORKSPACE`:

```
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_pigz",
    url = "https://github.com/jchorl/rules_pigz/archive/v0.0.4.tar.gz",
    sha256 = "1f67b847deeec19a47834c06ca94a3d5f2c83fd944c1c26dcab24af3e3cbe158",
    strip_prefix = "rules_pigz-0.0.4"
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
