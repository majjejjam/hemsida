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
    font-size: 16px;
}

body {
    background-color: #fafafa;
    margin: 0;
}

p {
    width: 600px;
    line-height: 1.5;
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
    font-size: 2em;
    margin: 0.6em 0;
    font-variant-caps: all-small-caps;
    letter-spacing: 0.1em;
    display: inline-block;
}

header li {
    font-size: 1.5em;
    margin: 1.2em 1em 1em 1em;
    display: inline-block;
}

h1 {
  margin: 0;
  padding: 20px 0;
}

img {
  display: block;
  margin: 0 auto;
}
