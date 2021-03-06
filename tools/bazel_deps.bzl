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
        sha256 = "c78216f5be5d451a42275b0b7dc809fb9347e2b04a68f68bad620a2b01f5c774",
        urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/5.5.2/rules_nodejs-5.5.2.tar.gz"],
    )
