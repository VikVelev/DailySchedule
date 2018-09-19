#!/usr/bin/ruby -w
require '/home/viktorv/Scripts/DailySchedule/engine.rb'
require 'date'

def main()
    time = Date.today
    currentDay = time.strftime("%A")

    if (ARGV[0] == "help")
        Help()
    else
        if (ARGV[0] != nil)
            currentDay = ARGV[0]
        end
        if (CheckForSchedule(currentDay))
            PrintSchedule(currentDay)
        else    
            CreateSchedule(currentDay)
        end
    end
end

main()
