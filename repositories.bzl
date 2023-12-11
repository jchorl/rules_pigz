load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repositories():
    http_archive(
        name = "pigz",
        build_file_content = """
cc_library(
    name = "zopfli",
    hdrs = glob(["zopfli/src/zopfli/*.h"]),
    srcs = glob(["zopfli/src/zopfli/*.c"]),
)
cc_binary(
    name = "pigz",
    srcs = [
        "pigz.c",
        "try.c",
        "try.h",
        "yarn.c",
        "yarn.h",
    ],

    # from https://github.com/madler/pigz/blob/cb8a432c91a1dbaee896cd1ad90be62e5d82d452/Makefile#L2
    copts = [
        "-O3",
        "-Wall",
        "-Wextra",
        "-Wno-unknown-pragmas",
        "-Wcast-qual",
    ],
    linkopts = [
        "-lm",
        "-lpthread",
        "-lz",
    ],
    deps = [":zopfli"],
    visibility = ["//visibility:public"],
)""",
        sha256 = "2f7f6a6986996d21cb8658535fff95f1c7107ddce22b5324f4b41890e2904706",
        strip_prefix = "pigz-2.8",
        url = "https://github.com/madler/pigz/archive/refs/tags/v2.8.tar.gz",
    )
