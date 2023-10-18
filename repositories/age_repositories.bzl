load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def age_repositories():
    http_archive(
        name = "age_darwin_amd64",
        # The BUILD file is really a few convenience aliases (may remove later, or convert to list)
        # You can test whether it's resolving for your architcture using:

        #     bazel run @age_darwin_amd64//:age -- --version
        build_file_content = "\n".join([
            """alias(name="age", actual="//:age/age", visibility = ["//visibility:public"])""",
            """alias(name="age-keygen", actual="//:age/age-keygen", visibility = ["//visibility:public"])""",
            "",  # readability during debug
        ]),
        sha256 = "81bdfa27906288b1b0d1952202a34c8020da9b01008761ca91100c87d416227c",
        urls = [
            "https://github.com/FiloSottile/age/releases/download/v1.1.1/age-v1.1.1-darwin-amd64.tar.gz",
        ],
    )

    http_archive(
        name = "age_linux_amd64",
        # The BUILD file is really a few convenience aliases (may remove later, or convert to slice)
        build_file_content = "\n".join([
            """alias(name="age", actual="//:age/age", visibility = ["//visibility:public"])""",
            """alias(name="age-keygen", actual="//:age/age-keygen", visibility = ["//visibility:public"])""",
            "",  # readability during debug
        ]),
        sha256 = "cf16cbb108fc56e2064b00ba2b65d9fb1b8d7002ca5e38260ee1cc34f6aaa8f9",
        urls = [
            "https://github.com/FiloSottile/age/releases/download/v1.1.1/age-v1.1.1-linux-amd64.tar.gz",
        ],
    )
