extends Node

#HTML Questions
var html_easy = [
	[#Question Contents no.1
		'Which tag is used to create a hyperlink in HTML?', #Question
		'<a>', #Answer
		[ #Wrong Answers
			'<img>',
			'<link>',
			'<href>'
		]
	],
	[#Question Contents no.2
		'Which of the following will create a numbered list?', #Question
		'<ol><li>Item</li></ol>', #Answer
		[ #Wrong Answers
			'<ul><li>Item</li></ul>',
			'<dl><dt>Item</dt></dl>',
			'<li>Item</li>'
		]
	],
	[#Question Contents no.3
		'What does this HTML input do? <input type="checkbox">', #Question
		'Creates a checkbox', #Answer
		[ #Wrong Answers
			'Creates a text box',
			'Adds a dropdown menu',
			'Submits a form'
		]
	],
	[#Question Contents no.4
		'What is the correct HTML to display an image?', #Question
		'<img src="photo.jpg">', #Answer
		[ #Wrong Answers
			'<img href="photo.jpg">',
			'<image src="photo.jpg">',
			'<pic src="photo.jpg">'
		]
	],
	[#Question Contents no.5
		'What does the <title> tag do?', #Question
		'Sets tab title in browser', #Answer
		[ #Wrong Answers
			'Shows main heading',
			'Adds watermark',
			'Adds logo'
		]
	],
	[#Question Contents no.6
		'Which tag is used to create a numbered list?', #Question
		'<ol>', #Answer
		[ #Wrong Answers
			'<ul>',
			'<list>',
			'<dl>'
		]
	],
	[#Question Contents no.7
		'Which HTML tag is used to insert a horizontal rule (line)?', #Question
		'<hr>', #Answer
		[ #Wrong Answers
			'<line>',
			'<break>',
			'<border>'
		]
	],
	[#Question Contents no.8
		'What does the following code do? <a href="https://www.google.com">Visit Google</a>', #Question
		'Creates a hyperlink', #Answer
		[ #Wrong Answers
			'Displays an image',
			'Creates a button',
			'Adds a video'
		]
	],
	[#Question Contents no.9
		'Which tag is used to create a checkbox?', #Question
		'<input type="checkbox">', #Answer
		[ #Wrong Answers
			'<box>',
			'<check>',
			'<checkbox>'
		]
	]
]

var html_medium = [
	[#Question Contents #1
		'Which tag is used to define a table row?',#Question
		'<tr>',#Answer
		[#Wrong Answers
			'<td>',
			'<th>',
			'<table-row>'
		]
	],
	[#Question Contents #2
		'Which attribute is used in <img> to define the image path?',#Question
		'src',#Answer
		[#Wrong Answers
			'alt',
			'href',
			'path'
		]
	],
	[#Question Contents #3
		'Which element is used to group content for styling in HTML?',#Question
		'<div>',#Answer
		[#Wrong Answers
			'<style>',
			'<group>',
			'<span>'
		]
	],
	[#Question Contents #4
		'Which tag and attribute combination would make a table row with two cells?',#Question
		'<tr><td>One</td><td>Two</td></tr>',#Answer
		[#Wrong Answers
			'<table><tr><row>One</row><row>Two</row></tr></table>',
			'<th><td>One</td><td>Two</td></th>',
			'<table><td>One</td><td>Two</td></table>'
		]
	],
	[#Question Contents #5
		'Which tag is used to create a dropdown list?',#Question
		'<select>',#Answer
		[#Wrong Answers
			'<input type="dropdown">',
			'<dropdown>',
			'<listbox>'
		]
	],
	[#Question Contents #6
		'What is the correct HTML tag to play audio files?',#Question
		'<audio>',#Answer
		[#Wrong Answers
			'<media>',
			'<sound>',
			'<play>'
		]
	],
	[#Question Contents #7
		'Which code defines a section of content meant for grouping and styling?',#Question
		'<div class="box">Content</div>',#Answer
		[#Wrong Answers
			'<style class="box">Content</style>',
			'<span class="box">Content</span>',
			'<group class="box">Content</group>'
		]
	],
	[#Question Contents #8
		'Which attribute defines inline styles in HTML?',#Question
		'style',#Answer
		[#Wrong Answers
			'css',
			'class',
			'id'
		]
	],
	[#Question Contents #9
		'What is the correct HTML for creating a text input field?',#Question
		'<input type="text">',#Answer
		[#Wrong Answers
			'<text>',
			'<textbox>',
			'<input type="textbox">'
		]
	]
]

var html_hard = [
	[#Question Contents #1
		'Which tag is used for semantic grouping of content (block-level)?',#Question
		'<section>',#Answer
		[#Wrong Answers
			'<div>',
			'<group>',
			'<main>'
		]
	],
	[#Question Contents #2
		'Which tag defines a figure caption?',#Question
		'<figcaption>',#Answer
		[#Wrong Answers
			'<caption>',
			'<legend>',
			'<label>'
		]
	],
	[#Question Contents #3
		'What does this code embed into the page? <iframe src="https://example.com" width="300" height="200"></iframe>',#Question
		'A webpage inside the current page',#Answer
		[#Wrong Answers
			'A video',
			'An image preview',
			'An external script'
		]
	],
	[#Question Contents #4
		'Which tag is used to define the relationship between the current document and an external resource?',#Question
		'<link>',#Answer
		[#Wrong Answers
			'<meta>',
			'<src>',
			'<ref>'
		]
	],
	[#Question Contents #5
		'Which HTML tag is used to embed JavaScript?',#Question
		'<script>',#Answer
		[#Wrong Answers
			'<js>',
			'<javascript>',
			'<code>'
		]
	],
	[#Question Contents #6
		'What tag is used for defining contact information?',#Question
		'<address>',#Answer
		[#Wrong Answers
			'<info>',
			'<footer>',
			'<contact>'
		]
	],
	[#Question Contents #7
		'Which HTML tag is used to define a client-side image map?',#Question
		'<map>',#Answer
		[#Wrong Answers
			'<imgmap>',
			'<areamap>',
			'<imagemap>'
		]
	],
	[#Question Contents #8
		'Which tag defines a scalar measurement within a known range (a gauge)?',#Question
		'<meter>',#Answer
		[#Wrong Answers
			'<range>',
			'<gauge>',
			'<progress>'
		]
	]
]

#CSS Questions
var css_easy = [
	[ #Question # 1
		'What does CSS stand for?', # Question
		'Cascading Style Sheets', # Answer
		[   # Wrong Answers
			'Creative Style Sheets',
			'Computer Style Sheets',
			'Card Style Sheets'
		]
	],
	[ #Question # 2
		'What is the output color of the text? <p style="color: red;">Welcome</p>', # Question
		'Red', # Answer
		[   # Wrong Answers
			'Blue',
			'Black',
			'White'
		]
	],
	[ #Question # 3
		'How do you make text bold in CSS?', # Question
		'font-weight: bold;', # Answer
		[   # Wrong Answers
			'text-style: bold;',
			'weight: bold;',
			'font-size: bold;'
		]
	],
	[ #Question # 4
		'Which property changes background color?', # Question
		'background-color', # Answer
		[   # Wrong Answers
			'color',
			'bgcolor',
			'color-background'
		]
	],
	[ #Question # 5
		'What will this output? <div style="font-size: 20px;">Hello</div>', # Question
		'Font size is 20px', # Answer
		[   # Wrong Answers
			'Font size is 16px',
			'Font size is 12px',
			'Font size is 32px'
		]
	],
	[ #Question # 6
		'What’s the output width? <div style="width: 100px; padding: 10px;">Content</div>', # Question
		'120px', # Answer
		[   # Wrong Answers
			'100px',
			'140px',
			'80px'
		]
	],
	[ #Question # 7
		'What will this render? <h1 style="text-align: center;">Title</h1>', # Question
		'Centered', # Answer
		[   # Wrong Answers
			'Left aligned',
			'Right aligned',
			'Justified'
		]
	],
	[ #Question # 8
		'Which property sets the font family of text?', # Question
		'font-family', # Answer
		[   # Wrong Answers
			'font-size',
			'font-text',
			'font-weight'
		]
	],
	[ #Question # 9
		'Which property is used to make text italic?', # Question
		'font-style', # Answer
		[   # Wrong Answers
			'font-weight',
			'text-style',
			'text-weight'
		]
	],
	[ #Question # 10
		'Which one is used for internal CSS?', # Question
		'<style>', # Answer
		[   # Wrong Answers
			'<css>',
			'<script>',
			'<cascading-style-sheets>'
		]
	]
]

var css_medium = [
	[ #Question # 1
		'Which property adds space inside the element border?', # Question
		'padding', # Answer
		[   # Wrong Answers
			'margin',
			'border',
			'space'
		]
	],
	[ #Question # 2
		'How do you center text horizontally in a block?', # Question
		'text-align: center;', # Answer
		[   # Wrong Answers
			'align: center;',
			'center-text: true;',
			'justify-content :center;'
		]
	],
	[ #Question # 3
		'What is the output? p { font-size: 100%; }', # Question
		'16px', # Answer
		[   # Wrong Answers
			'100px',
			'1px',
			'32px'
		]
	],
	[ #Question # 4
		'Which selector applies on hover state?', # Question
		':hover', # Answer
		[   # Wrong Answers
			'.hover',
			'hover',
			'-hover'
		]
	],
	[ #Question # 5
		'Which of the following is a valid syntax to set a linear gradient background?', # Question
		'background: linear-gradient(red, blue);', # Answer
		[   # Wrong Answers
			'background: gradient(linear, red, blue);',
			'background-color: linear-gradient(red, blue);',
			'background-color: gradient(linear, red, blue);'
		]
	],
	[ #Question # 6
		'What is the default display property of a <div>?', # Question
		'block', # Answer
		[   # Wrong Answers
			'inline',
			'inline-block',
			'flex'
		]
	],
	[ #Question # 7
		'What does default box-sizing equal?', # Question
		'content-box', # Answer
		[   # Wrong Answers
			'border-box',
			'padding-box',
			'margin-box'
		]
	],
	[ #Question # 8
		'Which property applies a gradient background?', # Question
		'background: linear-gradient(...);', # Answer
		[   # Wrong Answers
			'background-image',
			'bg-gradient',
			'gradient'
		]
	],
	[ #Question # 9
		'What is the effect of: div { user-select: none; }', # Question
		'Text inside div can’t be selected', # Answer
		[   # Wrong Answers
			'Text is hidden',
			'No effect',
			'Text inside div can be selected'
		]
	],
	[ #Question # 10
		'What’s the output? h1 { text-align: center; }', # Question
		'Centers the text horizontally', # Answer
		[   # Wrong Answers
			'Aligns text to the left',
			'Aligns text to the right',
			'Centers the text vertically'
		]
	]
]

var css_hard = [
	[ #Question # 1
		'Margin shorthand order: margin:10px 20px 30px 40px;', # Question
		'top/right/bottom/left', # Answer
		[   # Wrong Answers
			'top/left/bottom/right',
			'top/bottom/left/right',
			'left/right/top/bottom'
		]
	],
	[ #Question # 2
		'What is the output? a { text-decoration: none; }', # Question
		'Removes underline from links', # Answer
		[   # Wrong Answers
			'Adds underline for links',
			"Changes links' color only",
			'Changes nothing to links'
		]
	],
	[ #Question # 3
		'Which defines grid rows?', # Question
		'grid-template-rows', # Answer
		[   # Wrong Answers
			'grid-rows',
			'grid-auto-rows',
			'row-grid'
		]
	],
	[ #Question # 4
		'Which property adds text dropshadow?', # Question
		'text-shadow', # Answer
		[   # Wrong Answers
			'text-stroke',
			'text-decoration',
			'text-background'
		]
	],
	[ #Question # 5
		'Use Arial font with fallback to sans-serif. Which is correct?', # Question
		'font-family: Arial, sans-serif;', # Answer
		[   # Wrong Answers
			"font-family: 'Arial Sans', serif;",
			'font-family: Arial sans-serif;',
			'font-family: Arial: sans-serif;'
		]
	]
]

#JS Questions
var js_easy = [
	[ #Question # 1
		'What is JavaScript mainly used for?', # Question
		'Adding interactivity to web pages', # Answer
		[   # Wrong Answers
			'Styling websites',
			'Structuring HTML',
			'Server configuration'
		]
	],
	[ #Question # 2
		'Which of the following is not a JavaScript data type?', # Question
		'Character', # Answer
		[   # Wrong Answers
			'Object',
			'Function',
			'String'
		]
	],
	[ #Question # 3
		'Which keyword allows variable reassignment?', # Question
		'let', # Answer
		[   # Wrong Answers
			'const',
			'set',
			'final'
		]
	],
	[ #Question # 4
		'How do you create an array?', # Question
		'[1,2,3]', # Answer
		[   # Wrong Answers
			'{1,2,3}',
			'<1,2,3>',
			'(1,2,3)'
		]
	],
	[ #Question # 5
		'What keyword starts a loop in JavaScript?', # Question
		'for', # Answer
		[   # Wrong Answers
			'repeat',
			'loop',
			'each'
		]
	],
	[ #Question # 6
		'What data type is "123"?', # Question
		'string', # Answer
		[   # Wrong Answers
			'number',
			'int',
			'float'
		]
	],
	[ #Question # 7
		'What keyword is used to declare a variable?', # Question
		'var', # Answer
		[   # Wrong Answers
			'set',
			'def',
			'declare'
		]
	],
	[ #Question # 8
		'Which method shows a popup box?', # Question
		'alert()', # Answer
		[   # Wrong Answers
			'confirm()',
			'log()',
			'display()'
		]
	],
	[ #Question # 9
		'How do you declare a constant?', # Question
		'const x = 5', # Answer
		[   # Wrong Answers
			'let x = 5',
			'var x = 5',
			'x = 5'
		]
	],
	[ #Question # 10
		'What data type is "hello"?', # Question
		'string', # Answer
		[   # Wrong Answers
			'text',
			'char',
			'word'
		]
	]
]

var js_medium = [
	[ #Question # 1
		'Which method adds an item to the end of an array?', # Question
		'push()', # Answer
		[   # Wrong Answers
			'add()',
			'append()',
			'insert()'
		]
	],
	[ #Question # 2
		'Which keyword has block-level scope?', # Question
		'let', # Answer
		[   # Wrong Answers
			'var',
			'global',
			'scope'
		]
	],
	[ #Question # 3
		'Which JavaScript operator is used to combine two or more strings?', # Question
		'+', # Answer
		[   # Wrong Answers
			'&',
			'=',
			'/'
		]
	],
	[ #Question # 4
		'Which operator combines conditions? Example: if(a > 0 __ b > 0)', # Question
		'&&', # Answer
		[   # Wrong Answers
			'!',
			'||',
			'=='
		]
	],
	[ #Question # 5
		'What does .length return on a string?', # Question
		'Number of characters', # Answer
		[   # Wrong Answers
			'Number of lines',
			'Number of words',
			'Index of last character'
		]
	],
	[ #Question # 6
		'Which array method creates a new array from another?', # Question
		'filter()', # Answer
		[   # Wrong Answers
			'push()',
			'pop()',
			'splice()'
		]
	],
	[ #Question # 7
		'Which keyword has block scope?', # Question
		'let', # Answer
		[   # Wrong Answers
			'var',
			'function',
			'global'
		]
	],
	[ #Question # 8
		'What is the result of true && false?', # Question
		'false', # Answer
		[   # Wrong Answers
			'true',
			'"false"',
			'undefined'
		]
	],
	[ #Question # 9
		'What is the result of true || false?', # Question
		'true', # Answer
		[   # Wrong Answers
			'false',
			'undefined',
			'"true"'
		]
	]
]

var js_hard = [
	[ #Question # 1
		'Which method transforms an array into a single value?', # Question
		'reduce()', # Answer
		[   # Wrong Answers
			'filter()',
			'map()',
			'forEach()'
		]
	],
	[ #Question # 2
		'What is the output of type of null?', # Question
		'"object"', # Answer
		[   # Wrong Answers
			'"null"',
			'"undefined"',
			'"NaN"'
		]
	],
	[ #Question # 3
		'Which keyword prevents a variable from being reassigned?', # Question
		'const', # Answer
		[   # Wrong Answers
			'var',
			'let',
			'static'
		]
	],
	[ #Question # 4
		'Which method can stop setInterval()?', # Question
		'clearInterval()', # Answer
		[   # Wrong Answers
			'clearTimeout()',
			'stopInterval()',
			'cancelInterval()'
		]
	],
	[ #Question # 5
		'Which operator checks both value and type?', # Question
		'===', # Answer
		[   # Wrong Answers
			'==',
			'!=',
			'='
		]
	]
]
