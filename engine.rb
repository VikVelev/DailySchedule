def CheckForSchedule(day)
    return File.exist?(day)
end

def LoadSchedule(day)
    puts "Loading Schedule..."
    @schedule = File.open(day, "w")
    return schedule
end

def PrintSchedule(day)    
    line_num=0
    text=File.open(day).read
    text.gsub!(/\r\n?/, "\n")
    text.each_line do |line|
      print "#{line_num += 1}: #{line}"
    end
end

def CreateSchedule(day)
    puts "Creating files..."
    creating_schedule = File.open(day, "w")
    
    puts "How many hours do you have today?"
    hours = gets.to_i()
    
    if (hours > 0)
        puts "What are they?"

        for i in 0..hours-1
            print "#{i+1}: "
            line = gets
            puts line
            creating_schedule.puts line

        end
    else
        puts "Wohoo no school on #{day}"
    end

    creating_schedule.close()
end