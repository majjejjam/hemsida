import pluginWebc from "@11ty/eleventy-plugin-webc";
import pluginRss from "@11ty/eleventy-plugin-rss";

export default function(eleventyConfig) {
		eleventyConfig.addPassthroughCopy("bundle.css");
		eleventyConfig.addPassthroughCopy("assets/fonts");

	  eleventyConfig.addPlugin(pluginWebc, {
		    components: ['src/_components/**/*.webc'],
	  });
		eleventyConfig.addPlugin(pluginRss);

		return {
				dir: {
						input: "src",
						includes: "_components",
            layouts: "_layouts",
				},
		};
}
