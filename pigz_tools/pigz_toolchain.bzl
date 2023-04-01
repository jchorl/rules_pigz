PigzInfo = provider(
    doc = "Information about how to invoke pigz.",
    fields = ["bin_path"],
)

def _pigz_toolchain_impl(ctx):
    toolchain_info = platform_common.ToolchainInfo(
        pigzinfo = PigzInfo(
            bin_path = ctx.file.bin_path,
        ),
    )
    return [toolchain_info]

pigz_toolchain = rule(
    implementation = _pigz_toolchain_impl,
    attrs = {
        "bin_path": attr.label(
            allow_single_file=True,
            executable=True,
            cfg="exec",
        ),
    },
)
