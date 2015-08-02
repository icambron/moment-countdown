#moment-countdown

moment-countdown is a tiny [moment.js](http://momentjs.com) plugin that integrates with [Countdown.js](http://countdownjs.org). The file is [here](https://raw.github.com/icambron/moment-countdown/master/dist/moment-countdown.min.js). The NPM is `moment-countdown`.

##How it works

```js
//from then until now
moment("1982-5-25").countdown().toString(); //=> '30 years, 10 months, 14 days, 1 hour, 8 minutes, and 14 seconds'

//accepts a moment, JS Date, or anything parsable by the Date constructor
moment("1955-8-21").countdown("1982-5-25").toString(); //=> '26 years, 9 months, and 4 days'

//also works with the args flipped, like diff()
moment("1982-5-25").countdown("1955-8-21").toString(); //=> '26 years, 9 months, and 4 days'

//accepts all of countdown's options
moment().countdown("1982-5-25", countdown.MONTHS|countdown.WEEKS, NaN, 2).toString(); //=> '370 months, and 2.01 weeks'
```

See [Countdown's documentation](http://countdownjs.org/readme.html) for descriptions of those extra options.

##Getting set up

###Browser
Grab [moment.js](https://raw.github.com/moment/moment/2.0.0/min/moment.min.js), [countdown.js](https://bitbucket.org/mckamey/countdown.js/raw/tip/countdown.min.js), and [moment-countdown.js](https://raw.github.com/icambron/moment-countdown/master/dist/moment-countdown.min.js). Then inside your header:

```html
<script src="moment.min.js"></script>
<script src="countdown.min.js"></script>
<script src="moment-countdown.min.js"></script>
```

And you're off to the races.

###Node

```
npm install moment-countdown
```

You should also have Moment and Countdown installed, which you do like this: 

```
npm install moment countdown
```

In your node code:

```js
require('moment-countdown');
```

##License (MIT)

Copyright (c) 2013 Isaac Cambron

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
