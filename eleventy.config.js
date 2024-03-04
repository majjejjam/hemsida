import pluginWebc from "@11ty/eleventy-plugin-webc";
import pluginRss from "@11ty/eleventy-plugin-rss";

export default function(eleventyConfig) {
		eleventyConfig.addPassthroughCopy("bundle.css");
		eleventyConfig.addPassthroughCopy("assets/fonts");
		eleventyConfig.addPlugin(pluginWebc);
		eleventyConfig.addPlugin(pluginRss);

		return {
				dir: {
						input: "content",
						includes: "../_includes",
						data: "../_data",
						output: "_site"
				},
		};
}
