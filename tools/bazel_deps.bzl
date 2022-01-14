"""Third-party dependencies fetched by Bazel.
Unlike WORKSPACE, the content of this file is unordered.
Keep them separate to make the WORKSPACE file more maintainable.
"""

# Install the nodejs "bootstrap" package
# This provides the basic tools for running and packaging nodejs programs in Bazel

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def fetch_build_bazel_rules_nodejs():
    http_archive(
        name = "build_bazel_rules_nodejs",
        sha256 = "d63ecec7192394f5cc4ad95a115f8a6c9de55c60d56c1f08da79c306355e4654",
        urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/4.6.1/rules_nodejs-4.6.1.tar.gz"],
    )

# rules_nodejs doesn't depend on skylib, but it's a useful dependency anyway.
def fetch_bazel_skylib():
    http_archive(
        name = "bazel_skylib",
        urls = [
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.1.1/bazel-skylib-1.1.1.tar.gz",
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.1.1/bazel-skylib-1.1.1.tar.gz",
        ],
        sha256 = "c6966ec828da198c5d9adbaa94c05e3a1c7f21bd012a0b29ba8ddbccb2c93b0d",
    )
