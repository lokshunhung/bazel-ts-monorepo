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
        sha256 = "2b2004784358655f334925e7eadc7ba80f701144363df949b3293e1ae7a2fb7b",
        urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/5.4.0/rules_nodejs-5.4.0.tar.gz"],
    )
