"""Tools used internal for this repository.
"""

load("typescript.bzl", _ts_project = "ts_project")
load("jest.bzl", _jest_test = "jest_test")

ts_project = _ts_project
jest_test = _jest_test
