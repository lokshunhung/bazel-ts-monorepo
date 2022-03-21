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
        sha256 = "3ceb1e5b5dcad5fa2ad8870a20201cfbb9c9c63cac4055c9ab370034c765297f",
        urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/5.3.0/rules_nodejs-5.3.0.tar.gz"],
    )
