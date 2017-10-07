def CheckForSchedule(day)
    if (File.exist?(day))
        return true
    else
        return false
    end
end

def LoadSchedule(day)
    puts "Loading Schedule..."
    @schedule = File.open(day, "w")
    return schedule
end

def PrintSchedule(day)
    schedule = File.open(day, "w")
    puts schedule
end

def CreateSchedule(day)
    puts "Creating files..."
    Schedule = File.open(day, "w")
    
    puts "How many hours do you have today?"
    hours = gets

    puts "What are they?"

    for i in 0..hours.to_i()-1
        print "#{i+1}: "
        Schedule.puts gets
    end
end