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
    sha256 = "7e34200ce3364d782753ae50db5c5960e1607a1e91a9a5ad37ffd0846e890d1b",
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
