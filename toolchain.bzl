PigzInfo = provider(
    doc = "Information about how to invoke pigz.",
    fields = ["bin_path"],
)

def _toolchain_configure_impl(ctx):
    toolchain_info = platform_common.ToolchainInfo(
        pigzinfo = PigzInfo(
            bin_path = ctx.file.bin_path,
        ),
    )
    return [toolchain_info]

toolchain_configure = rule(
    implementation = _toolchain_configure_impl,
    attrs = {
        "bin_path": attr.label(
            allow_single_file=True,
            executable=True,
            cfg="exec",
        ),
    },
)
