import pluginAlias from "@rollup/plugin-alias";
import pluginNodeResolve from "@rollup/plugin-node-resolve";

/** @type {import("rollup").RollupOptions} */
const config = {
    output: {
        format: "commonjs",
    },
    plugins: [
        pluginAlias({
            entries: [
                {
                    find: "@bazelmono/common",
                    replacement: `${__dirname}/../../pkgs/common`,
                },
            ],
        }),
        pluginNodeResolve(),
    ],
};

export default config;
