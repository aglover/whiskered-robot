# Whiskered Robot 

Simple Node, [Coffeescript](http://coffeescript.org/), and jQuery Mobile template (plus deployment to Heroku). Uses [Whiskers](https://github.com/gsf/whiskers.js) as template engine as well as [Asset pipeline](https://github.com/rlidwka/asset-pipeline).

Makes use of [Bower](http://bower.io/) for UI components such as [jQuery Mobile Flat-UI Theme](https://github.com/ququplay/jquery-mobile-flat-ui-theme).

MongoDB interaction via [node-mongoskin](https://github.com/kissjs/node-mongoskin).

## Installation 

Make sure you have a current version of Node. I recommend [NVM](http://thediscoblog.com/blog/2013/03/12/node-in-3-commands/). Then `cd` into the root of this project and type:

`$> npm install`

Next, make sure you have Coffeescript in your path -- just install it for your current installation of Node:

`$> sudo npm install -g coffee-script`


Finally, make sure you have Ruby & Foreman (what if you don't? Install Heroku toolbet as that'll give it to you) and then type:

`$> foreman start`

Boom. Done. 

# License

The MIT License

Copyright (c) 2013 Andrew Glover

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE
