def CheckForSchedule(day)
    return File.exist?(day)
end

def LoadSchedule(day)
    puts "Loading Schedule..."
    @schedule = File.open(day, "w")
    return schedule
end

def PrintSchedule(day)    
    schedule_for_printing=File.open(day).read
    schedule_for_printing.gsub!(/\r\n?/, "\n")

    line_num=0
    
    schedule_for_printing.each_line do |line|
        line_num += 1
    end

    if (line_num > 0)
        puts "Your schedule for #{day}:"
    else
        puts "Wohoo no events on #{day}"
    end
    
    line_num=0
    
    schedule_for_printing.each_line do |line|
      print "#{line_num += 1}: #{line}"
    end
end

def CreateSchedule(day)
    
    puts "Creating file..."
    creating_schedule = File.open(day, "w")
    
    puts "How many events do you have today?"
    hours = $stdin.gets.chomp.to_i()
    
    if (hours > 0)
        puts "What are they?"

        for i in 0..hours-1
            print "#{i+1}: "
            creating_schedule.puts $stdin.gets.chomp
        end
    else
        puts "Wohoo no school on #{day}"
    end

    creating_schedule.close()
end

def Help()
    puts "You can type the day of the week as an argument you want to see/create your schedule for."
    puts "By default it is the current day."
end
