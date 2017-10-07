#!/usr/bin/ruby -w
require './engine.rb'

def main()
    currentDayWord = Time.now.strftime("%A")

    if (ARGV[0] == "help")
        Help()
    else
        if (ARGV[0] != nil)
            currentDayWord = ARGV[0]
        end
        if (CheckForSchedule(currentDayWord))
            PrintSchedule(currentDayWord)
        else    
            CreateSchedule(currentDayWord)
        end
    end
end

main()