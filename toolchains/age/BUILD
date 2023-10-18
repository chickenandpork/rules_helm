package(default_visibility = ["//visibility:private"])

load(":age_toolchain.bzl", "age_toolchain")

toolchain_type(
    name = "toolchain_type",
    visibility = ["//visibility:public"],
)

# Age toolchain that points to age binary plus age-keygen
age_toolchain(
    name = "age_osx_amd64",
    keygen = "@age_darwin_amd64//:age-keygen",
    tool = "@age_darwin_amd64//:age",
    visibility = ["//visibility:public"],
)

age_toolchain(
    name = "age_linux_amd64",
    keygen = "@age_linux_amd64//:age-keygen",
    tool = "@age_linux_amd64//:age",
    visibility = ["//visibility:public"],
)

toolchain(
    name = "age_osx_amd64_toolchain",
    exec_compatible_with = [
        "@platforms//os:osx",
        "@platforms//cpu:x86_64",
    ],
    target_compatible_with = [
        "@platforms//os:osx",
        "@platforms//cpu:x86_64",
    ],
    toolchain = ":age_osx_amd64",
    toolchain_type = ":toolchain_type",
)

toolchain(
    name = "age_linux_amd64_toolchain",
    exec_compatible_with = [
        "@platforms//os:linux",
        "@platforms//cpu:x86_64",
    ],
    target_compatible_with = [
        "@platforms//os:linux",
        "@platforms//cpu:x86_64",
    ],
    toolchain = ":age_linux_amd64",
    toolchain_type = ":toolchain_type",
)
