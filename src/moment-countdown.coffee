if require?
  countdown = require('countdown')
  moment = require('moment')
else
  countdown = @countdown
  moment = @moment

moment.fn.countdown = (other, args...) -> countdown @toDate(), moment(other).toDate(), args...
