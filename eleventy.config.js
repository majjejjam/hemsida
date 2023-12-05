const pluginWebc = require("@11ty/eleventy-plugin-webc");
const { EleventyRenderPlugin } = require("@11ty/eleventy")
const eleventyNavigationPlugin = require("@11ty/eleventy-navigation")

module.exports = function(eleventyConfig) {
    eleventyConfig.addPassthroughCopy("../bundle.css");
    eleventyConfig.addPlugin(pluginWebc);
    eleventyConfig.addPlugin(EleventyRenderPlugin);
    eleventyConfig.addPlugin(eleventyNavigationPlugin);

    return {
	dir: {
	    input: "content",
	    includes: "../_includes",
	    data: "../_data",
	    output: "_site"
	},
    };
}
