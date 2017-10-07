# DailySchedule
A Ruby Script which lets you create schedules for a chosen day.

Dependencies:
```bash
ruby
```

Installation:
```bash
git clone https://github.com/VikVelev/DailySchedule
#Delete my schedule if you want yours and you aren't from 11th D grade High School of Maths Varna
```

How to use:
```bash
#Navigate to the folder where you cloned it.
cd DailySchedule
#run the script, by default it runs for the current day unless you specify.
ruby main.rb #day_of_week#
#The main idea is this to run when your terminal starts, so to do that you need to add the following line to the .bashrc file
ruby $HOME/***directory where you cloned it***/DailySchedule/main.rb
#or just run the following
echo "ruby $HOME/***directory where you cloned it***/DailySchedule/main.rb" >> $HOME/.bashrc
```