#!/usr/bin/ruby -w
require './engine.rb'

def main()
    currentDay = Time.now.strftime("%A")

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