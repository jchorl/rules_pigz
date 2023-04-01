load(":pigz_toolchain.bzl", "pigz_toolchain")

toolchain_type(name = "toolchain_type")

pigz_toolchain(
    name = "pigz_linux_amd64",
    bin_path = "@pigz//:pigz",
)

toolchain(
    name = "pigz_linux_toolchain",
    exec_compatible_with = [
        "@platforms//os:linux",
        "@platforms//cpu:x86_64",
    ],
    target_compatible_with = [
        "@platforms//os:linux",
        "@platforms//cpu:x86_64",
    ],
    toolchain = ":pigz_linux_amd64",
    toolchain_type = ":toolchain_type",
)
