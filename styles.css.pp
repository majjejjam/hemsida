#lang pollen

@font-face {
    font-family: CooperHewitt;
    src: url('fonts/cooper-hewitt/CooperHewitt-Book.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: AlegreyaSans;
    src: url('fonts/alegreya-sans-ht-full-pack-webfonts/AlegreyaSans-Regular.woff2') format('woff2');
}

@font-face {
    font-family: AlegreyaSansSc;
    src: url('fonts/alegreya-sans-ht-full-pack-webfonts/AlegreyaSansSC-Regular.woff2') format('woff2');
}

@font-face {
    font-family: Alegreya;
    src: url('fonts/alegreya-ht-pro-full-pack-webfonts/Alegreya-Regular.woff2') format('woff2');
}

@font-face {
    font-family: AlegreyaSc;
    src: url('fonts/alegreya-ht-pro-full-pack-webfonts/AlegreyaSc-Regular.woff2') format('woff2');
}

@font-face {
    font-family: CrimsonPro;
    src: url('fonts/crimson-pro/CrimsonPro-Regular.woff2') format('woff2');
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

/* images and videos max out at full width */
img,
picture,
video {
    height: auto;
    max-width: 100%;
}
