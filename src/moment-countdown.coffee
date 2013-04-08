if typeof module != "undefined"
  countdown = require('countdown')
  moment = require('moment')

  Twix = try
    require('twix')
  catch _
    null
else
  countdown = @countdown
  moment = @moment
  Twix = @Twix

moment.fn.countdown = (other, args...) -> countdown @toDate(), moment(other).toDate(), args...

if Twix
  Twix.prototype.countdown = -> countdown @_trueStart(), @_trueEnd(), arguments...
