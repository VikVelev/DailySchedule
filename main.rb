#!/usr/bin/ruby -w
require './engine.rb'

currentDayWord = Time.now.strftime("%A")

if (CheckForSchedule(currentDayWord))
    puts "Hello"
end
