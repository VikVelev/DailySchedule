#!/usr/bin/ruby -w
require '/home/viktorv/Scripts/DailySchedule/engine.rb'
require 'date'
require 'titleize'

def main()
    time = Date.today
    query = time.strftime("%A")
    tomorrow = (Date.today() + 1).strftime("%A")
    yesterday = (Date.today() - 1).strftime("%A")


    if (ARGV[0] == "help")
        Help()
    else

        if (ARGV[0] != nil)
            query = (ARGV[0].downcase.titleize)
        end

        if (ARGV[0].downcase == "tomorrow")
            query = tomorrow
        end

        if (ARGV[0].downcase == "yesterday")
            query = yesterday
        end

        if (CheckForSchedule(query))
            PrintSchedule(query)
        else    
            CreateSchedule(query)
        end
        
    end
end

main()
