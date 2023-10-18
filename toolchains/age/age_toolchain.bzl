AgeToolchainInfo = provider(
    # "age" spoken like "Ah Ge", "Ge" like "Getter" not "Jetter"; author Filippo Valsorda also
    # prefers lowercase "age" not "Age", but I'm inconsistent about honouring that
    doc = "Age toolchain",
    fields = {
        "keygen": "Age-Keygen executable binary",
        "tool": "Age executable binary",
    },
)

def _age_toolchain_impl(ctx):
    toolchain_info = platform_common.ToolchainInfo(
        ageinfo = AgeToolchainInfo(
            keygen = ctx.attr.keygen,
            tool = ctx.attr.tool,
        ),
    )
    return [toolchain_info]

age_toolchain = rule(
    implementation = _age_toolchain_impl,
    attrs = {
        "keygen": attr.label(allow_single_file = True, doc = "age-keygen binary"),
        "tool": attr.label(allow_single_file = True, doc = "age binary"),
    },
)
