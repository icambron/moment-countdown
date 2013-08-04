countdown = require?('countdown') ? @countdown
moment = require?('moment') ? @moment

moment.fn.countdown = (other, args...) -> countdown @toDate(), moment(other).toDate(), args...
