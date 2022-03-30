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
        sha256 = "523da2d6b50bc00eaf14b00ed28b1a366b3ab456e14131e9812558b26599125c",
        urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/5.3.1/rules_nodejs-5.3.1.tar.gz"],
    )
