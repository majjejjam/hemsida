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
    font-family: CrimsonPro, AlegreyaSans, CooperHewitt, sans-serif;
    box-sizing: border-box;
    font-size: 20px;
}

body {
    background-color: #fafafa;
    margin-block: 1em;
    margin-inset: 0.5em;
    line-height: 1.5;
    position: relative;
}

main {
    max-width: 600px;
    display: flex;
    margin: auto;
    overflow-wrap: break-word;
    hyphens: auto;
}

.site-header {
    font-family: AlegreyaSans;
    padding: 0.5em 1em;
    color: black;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.site-header a {
    color: black;
    
}

.site-header a:visited {
    color: black;
}

.site-identity h1 {
    font-size: 1.5em;
    letter-spacing: 0.05em;
    text-transform: uppercase;
    margin: 0.6em 0;
    display: inline-block;
}

a {
    color: #1a5fb4;
    text-decoration: none;
    transition: 0.3s ease;
}

a:visited {
    color: #613583;
}

header a:hover {
    color: #5315;
}

.site-navigation ul,
.site-navigation li {
    margin: 0;
    padding: 0;
}

.site-navigation li {
    font-size: 1.2em;
    display: inline-block;
    margin: 1.2em 1em 1.1em 1em;
}

h1 {
    letter-spacing: -0.01em;
    font-size: 24px;
    margin-top: 1.4rem;
    margin-bottom: 0.4rem;
}

p {
    margin-top: 0;
    margin-bottom: 1em;
}

abbr {
    font-family: AlegreyaSansSc;
    letter-spacing: 0.075em;
    text-transform: lowercase;
}

q {
    quotes: "»" "«" "’" "’";
}

a[href^="http"]::after {
    content: "";
    width: 11px;
    height: 11px;
    margin-left: 4px;
    background-image: url("assets/step-out-symbolic.svg");
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
	padding-right: auto;
	padding-left: auto;
    }

    .site-header ul {
	align-content: center;
    }

    .site-identity {
	background-size: 60%;
	background-position: 1em 0.3em;
	background-repeat: no-repeat;
	margin-bottom: -1em;
	padding-left: auto;
	padding-right: auto;
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
    .site-header a,
    .site-header a:visited,
footer a,
footer a:visited {
    color: #fefefe
}
    a:visited {
	color: #D890D8;
    }
}
