#!/usr/bin/ruby -w
require '/home/viktorv/Scripts/DailySchedule/engine.rb'
require 'date'
require 'titleize'

def main()
    args = {
        "tomorrow" => (Date.today() + 1).strftime("%A"), 
        "today" => Date.today().strftime("%A"), 
        "yesterday" => (Date.today() - 1).strftime("%A")
    }


    if (ARGV[0] == "help")
        Help()
    else
        query = args["today"]
        
        if (ARGV[0] != nil)
            query = ARGV[0].downcase.titleize

            args.each do |key, element|
                if (ARGV[0] == key)
                    query = element
                end
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
