"""Tools used internal for this repository.
"""

def ts_project(name, srcs, deps):
    deps = deps + ["@npm/tslib"]
    ts_config(
        name = "%s-tsconfig" % name,
    )
