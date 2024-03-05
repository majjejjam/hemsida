import pluginWebc from "@11ty/eleventy-plugin-webc";
import pluginRss from "@11ty/eleventy-plugin-rss";
import markdownIt from "markdown-it";

export default function(eleventyConfig) {
		eleventyConfig.addPassthroughCopy("bundle.css");
		eleventyConfig.addPassthroughCopy("assets/fonts");

	  eleventyConfig.addPlugin(pluginWebc, {
		    components: ['src/_components/**/*.webc'],
	  });
		eleventyConfig.addPlugin(pluginRss);

    let options = {
        html: true,
        breaks: false,
        typographer: true,
        quotes: '»«’’'
    };

    eleventyConfig.setLibrary("md", markdownIt(options));

		return {
				dir: {
						input: "src",
						includes: "_components",
            layouts: "_layouts",
				},
		    htmlTemplateEngine: 'webc',
		};
}
