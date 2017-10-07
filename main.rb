#!/usr/bin/ruby -w
require './engine.rb'

def main()
    currentDayWord = Time.now.strftime("%A")

    if (CheckForSchedule(currentDayWord))
        puts "A Schedule for #{currentDayWord} exists"
        PrintSchedule(currentDayWord)
    else    
        CreateSchedule(currentDayWord)
    end
end

main()