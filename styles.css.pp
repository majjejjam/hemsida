#lang pollen

@font-face {
    font-family: CooperHewitt;
    src: url('fonts/CooperHewitt-Book.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: AlegreyaSans;
    src: url('fonts/alegreya-sans/alegreyasans-regular-webfont.woff') format('woff');
}

@font-face {
    font-family: AlegreyaSansSc;
    src: url('fonts/alegreya-sans/alegreyasanssc-regular-webfont.woff') format('woff');
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
    font-family: AlegreyaSans, CooperHewitt, sans-serif;
    box-sizing: border-box;
    font-size: 20px;
}

body {
    background-color: #fafafa;
    margin: 0;
}

main {
    width: 600px;
    margin: auto;
    line-height: 24px;
}

header {
    padding: .5em 2em;
    overflow: hidden;
    display: flex;
    justify-content: space-between;
}

a {
    color: #333;
    text-decoration: none;
    transition: 0.3s ease;
}

header a:hover {
    color: #5315;
}

header h1 {
    font-size: 1.5em;
    margin: 1.8em 0.2em;
    text-transform: uppercase;
    letter-spacing: 0.1em;
    display: inline-block;
}

header li {
    font-size: 1.5em;
    margin: 1.2em 1em 1em 1em;
    display: inline-block;
}

h1 {
    letter-spacing: -1px;
    font-size: 24px;
    margin-top: 1.4rem;
    margin-bottom: 0.4rem;
}

img {
  display: block;
  margin: 0 auto;
}

p {
    margin-top: 0;
    margin-bottom: 1em;
}

abbr {
    font-family: AlegreyaSansSc;
    letter-spacing: 0.06em;
    text-transform: lowercase;
}

q {
    quotes: "»" "«" "’" "’";
}
