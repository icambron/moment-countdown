moment = require?("moment") ? @moment
countdown = require?("countdown") ? @countdown
require?('../dist/moment-countdown')

assertEqual = (a, b) -> throw new Error("Found #{b}, expected #{a}") unless a == b

describe "moment.countdown()", ->
  start = moment "1982-05-25"
  end = "1990-10-14T00:00:15-04:00"

  it "returns a default countdown with no options", ->
    assertEqual "8 years, 4 months, 20 days and 15 seconds", start.countdown(end).toString()

  it "returns a specific format when options are provided", ->
    assertEqual "100 months, 28800 minutes and 15 seconds", start.countdown(end, countdown.MONTHS | countdown.MINUTES | countdown.SECONDS, NaN, 1).toString()
    assertEqual "100 months and 28800.25 minutes", start.countdown(end, countdown.MONTHS | countdown.MINUTES | countdown.SECONDS, 2, 2).toString()
