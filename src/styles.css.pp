#lang pollen

@font-face {
    font-family: AlegreyaSans;
    src: url('assets/fonts/alegreya-sans-ht-full-pack-webfonts/AlegreyaSans-Regular.woff2') format('woff2'),
	 url('assets/fonts/alegreya-sans-ht-full-pack-webfonts/AlegreyaSans-Regular.woff') format('woff');
    font-style: normal;
    font-style: normal;
}

@font-face {
    font-family: AlegreyaSans;
    src: url('assets/fonts/alegreya-sans-ht-full-pack-webfonts/AlegreyaSans-Italic.woff2') format('woff2'),
	 url('assets/fonts/alegreya-sans-ht-full-pack-webfonts/AlegreyaSans-Italic.woff') format('woff');
    font-weight: normal;
    font-style: italic;
}

@font-face {
    font-family: AlegreyaSans;
    src: url('assets/fonts/alegreya-sans-ht-full-pack-webfonts/AlegreyaSans-Bold.woff2') format('woff2'),
	 url('assets/fonts/alegreya-sans-ht-full-pack-webfonts/AlegreyaSans-Bold.woff') format('woff');
    font-weight: bold;
    font-style: normal;
}

@font-face {
    font-family: AlegreyaSansSc;
    src: url('assets/fonts/alegreya-sans-ht-full-pack-webfonts/AlegreyaSansSC-Regular.woff2') format('woff2');
}

@font-face {
    font-family: Alegreya;
    src: url('assets/fonts/alegreya-ht-pro-full-pack-webfonts/Alegreya-Regular.woff2') format('woff2');
}

@font-face {
    font-family: AlegreyaSc;
    src: url('assets/fonts/alegreya-ht-pro-full-pack-webfonts/AlegreyaSc-Regular.woff2') format('woff2');
}

@font-face {
    font-family: Vollkort;
    src: url('assets/fonts/Vollkorn/Vollkorn-Regular.woff2') format('woff2');
}

@font-face {
    font-family: Rakkas;
    src: url('assets/fonts/rakkas-regular.woff') format('woff');    
}

@font-face {
    font-family: Fantasque;
    src: url('assets/fonts/FantasqueSansMono-NoLoopK/Webfonts/FantasqueSansMono-Regular.woff2') format('woff2');    
}

* {
    text-rendering: optimizelegibility;
    -moz-font-feature-settings: 'kern=1';
    -moz-font-feature-settings: 'kern' 1;
    -webkit-font-feature-settings: 'kern' 1;
    -o-font-feature-settings: 'kern' 1;
    -ms-font-feature-settings: 'kern' 1;
    font-feature-settings: 'kern' 1;
    -moz-font-feature-settings: 'liga=1';
    -moz-font-feature-settings: 'liga' 1;
    -webkit-font-feature-settings: 'liga' 1;
    -o-font-feature-settings: 'liga' 1;
    -ms-font-feature-settings: 'liga' 1;
    font-feature-settings: 'liga' 1;
}

html {
    font-family: Vollkorn, AlegreyaSans, sans-serif;
    box-sizing: border-box;
    height: 100%;
    font-size: 20px;
}

body {
    color: #111111;
    background-color: #fefefe;
    min-height: 100%;
    display: grid;
    gap: 2em;
    grid-template-columns: 1fr auto;
    grid-template-rows: 1fr auto;
    margin-block: 1em;
    margin-inset: 0.5em;
    line-height: 1.5;
}

main {
    max-width: 30rem;
    text-align: left;
    margin-left: 2em;
    margin-right: auto;
    grid-column: 1;
    grid-row: 1;
    overflow-wrap: break-word;
    hyphens: auto;
}

.site-header {
    font-family: AlegreyaSans;
    text-transform: lowercase;
    grid-row: 1;
    grid-column: 2;
    padding-top: 2em;
    padding-right: calc(2em + 2.5vw);
    align-items: center;
    justify-self: right;
}

.site-header a,
.site-header a:visited,
footer a,
footer a:visited {
    color: black;
}

.skip-link {
    color: #fff;
    font-weight: 700;
    left: 50%;
    padding: 4px;
    position: absolute;
    transform: translate(100%,-300%);
  
}

.skip-link:focus {
    transform: translate(100%,-100%);
    transition: transform 0.3s;
}

header a:hover {
    color: #5315;
}

.site-navigation ul,
.site-navigation li {
    list-style: none;
    margin: 0;
    padding: 0;
}

.site-navigation li {
    font-size: 1.2em;
    /* margin: 1.2em 1em 1.1em 1em; */
}

.site-identity {
    font-family: Rakkas;
    font-style: normal;
    opacity: 0.8;
    font-size: calc(5em + 2.5vw);
    line-height: 0.9;
    text-align: center;
    background-image: url("assets/site-identinty-background.svg");
    background-position: 0 -1em;
    background-size: 100%;
    padding: 1em;
    margin: -1em;
    margin-bottom: -0.5em;
    z-index: -1;
    position: relative;
}

footer {
    font-family: AlegreyaSans;
    font-size: 80%;
    grid-row: 2;
    grid-column-start: 1;
    padding-bottom: 1em;
    text-align: center;
}

footer ul {
    padding-left: 0;
}

footer li {
    list-style: none;
    display: inline-block;
}

.posts {
    list-style: none;
    font-size: 1.2em;
}

.posts li {
    display: flex;
    justify-content: space-between;
}

.post-date {
    font-size: 80%;
    float: right;
}

h1 {
    font-family: AlegreyaSans;
    font-weight: normal;
    font-style: italic;
    letter-spacing: -0.01em;
    font-size: calc(1em + 2.5vw);
    margin-top: 1.6rem;
    margin-bottom: 0.4rem;
}

h2 {
    font-family: AlegreyaSans;
    font-weight: normal;
    font-style: normal;
    font-size: 1.4em;
    margin-top: 0.6rem;
    margin-bottom: 0.4rem;
}

h3 {
    font-family: AlegreyaSans;
    font-weight: normal;
    font-style: normal;
    font-size: 1.2em;
    margin-top: 0.6rem;
    margin-bottom: 0.4rem;
}

p {
    margin-top: 0;
    margin-bottom: 1em;
}

a {
    color: #1a5fb4;
    text-decoration: none;
    transition: 0.3s ease;
}

a:visited {
    color: #613583;
}

code {
    font-family: Fantasque;
    background: #eee;
    padding: 0 0.1em;
    font-size: 90%;
}

abbr {
    font-variant-caps: small-caps;
    letter-spacing: 0.05em;
    text-transform: lowercase;
}

q {
    quotes: "»" "«" "’" "’";
}

a[href^="http"]::after {
    content: "";
    width: 11px;
    height: 11px;
    margin-left: 0.25em;
    background-image: url("assets/icons/step-out-symbolic.svg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: contain;
    display: inline-block;
    overflow: hidden;
}

footer .github::after {
    background-image: url("assets/icons/github-mark/github-mark.svg");
    width: 1em;
    height: 1em;
    opacity: 0.9;
    margin-bottom: -0.3em;
    padding-bottom: 0.3em;
}

/* images and videos max out at full width */
img,
picture,
video {
    height: auto;
    max-width: 100%;
}

/* Microtypography */
squo-push {
    padding-left: 0.05em;
}

dquo-pull {
    padding-right: 0.05em;
}

/* Responsiveness */
@media screen and (max-width: 600px) {
    body {
	grid-template-rows: auto 1fr auto;
	grid-template-columns: 1fr;
    }

    main {
	grid-row: 2;
	margin-left: 1em;
	margin-right: 1em;
	
    }

    footer {
	grid-row: 3;
    }

    .site-header {
	grid-row: 1;
	grid-column: 1;
	justify-self: center;
	padding-top: 1em;
	padding-right: initial;
	padding-left: initial;
    }

    .site-header ul {
	align-content: center;
    }

    .site-identity {
	background-size: contain;
	background-position: center;
	background-repeat: no-repeat;
	padding: initial;
	margin: initial;
	padding-bottom: 0.5em;
	margin-bottom: -0.5em;
	padding-top: 0.5em;
	margin-top: -0.5em;
    }

    .site-navigation ul,
    .site-navigation li {
	display: inline-flex;
	padding: 0 1em;
	justify-content: space-between;
    }

    .skip-link {
	color: #fff;
	font-weight: 700;
	left: 50%;
	padding: 4px;
	position: absolute;
	transform: translate(-50%,-300%);
  
    }

    .skip-link:focus {
	transform: translate(-50%,-100%);
	transition: transform 0.3s;
    }


}

/* Dark scheme */
@media (prefers-color-scheme: dark) {
    body {
	color: #fefefe;
	background-color: #242424;
    }
    
    img {
	filter: brightness(.8) contrast(1.2);
    }
    
    code {
	background-color: #414141;
    }
    
    a[href^="http"]::after {
	filter: invert(0.98);
    }
    
    footer .github::after {
	background-image: url("assets/icons/github-mark/github-mark-white.svg");
    }
    
    .site-header a,
    .site-header a:visited,
    footer a,
    footer a:visited {
    color: #fefefe
    }
    
    a {
	color: #90B4D8;
    }
    
    a:visited {
	color: #D890D8;
    }
}
