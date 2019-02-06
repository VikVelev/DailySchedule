#!/usr/bin/ruby -w
require '/home/viktorv/Scripts/DailySchedule/engine.rb'
require 'date'
require 'titleize'

def main()
    today = Date.today().strftime("%A")
    tomorrow = (Date.today() + 1).strftime("%A")
    yesterday = (Date.today() - 1).strftime("%A")


    if (ARGV[0] == "help")
        Help()
    else
        query = today
        
        if (ARGV[0] != nil)
            query = ARGV[0].downcase.titleize

            if (ARGV[0].downcase == "tomorrow")
                query = tomorrow
            end

            if (ARGV[0].downcase == "today")
                query = today
            end

            if (ARGV[0].downcase == "yesterday")
                query = yesterday
            end
        end

        if (CheckForSchedule(query))
            PrintSchedule(query)
        else    
            CreateSchedule(query)
        end
        
    end
end

main()
