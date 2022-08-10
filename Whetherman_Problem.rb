require 'csv'
filenames_Dubai = Dir.chdir("/home/sami/projects/Whetherman_Problem/Dubai_weather") { Dir.entries(".") }
filenames_Murree = Dir.chdir("/home/sami/projects/Whetherman_Problem/Murree_weather") { Dir.entries(".") }
filenames_lahore = Dir.chdir("/home/sami/projects/Whetherman_Problem/lahore_weather") { Dir.entries(".") }

filenames_Dubai.sort!
filenames_Murree.sort!
filenames_lahore.sort!
# puts filenames_Dubai
puts "enter  year name"
year = gets.chomp

# year =2011
cities = ["lahore","Dubai","Murree"]
month = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]

# For Maximum Temperature
max_temp=-1000
max_temp_date=""
max_temp_city=""

min_temp=1000
min_temp_date=""
min_temp_city=""

max_hum=-1000
max_hum_date=""
max_hum_city=""


# For Single File
# file_path = "/home/abdullah126/Desktop/project2/Weather man-20220810T060630Z-001/Weather man/Dubai_weather/" 
# file_name = "#{cities[0]}weather#{year}_#{month[0]}.txt"
#             if filenames_Dubai.include?(file_name) 
#                 file_path = file_path << file_name
#                 # puts file_path
#                 file = File.open(file_path,"r+")
#                 puts file.inspect
#                 puts file.read


                
#                 csv = CSV.read(file_path, :headers=>true)
#                 size = csv['Max TemperatureC'].size
#                 max_temp= csv['Max TemperatureC'][0]

#                 for i in 1...size
#                     puts "in loop"                              # ... tells ruby to exclude the last number (here 10 if we .. only then it includes the last num)
#                     if max_temp.to_i < csv['Max TemperatureC'][i].to_i
#                         max_temp = csv['Max TemperatureC'][i]
#                         max_temp_date= csv['GST'][i]
#                         puts "max"
#                     end
#                 end
#                 puts max_temp 
#                 puts max_temp_date


#             elsif
#                 puts "no file exist"  
#             end


file_path = "" 
file_name=""

countLahore=0
countDubai=0
countMurree=0

cities.each do |city|
    month.each do |mon|
        
        file_path = "/home/sami/projects/Whetherman_Problem/#{city}_weather/" 
        if city == "Dubai"
            # puts "Dubai"
            # countDubai+=1
            file_name = "#{city}_weather_#{year}_#{mon}.txt"
            if filenames_Dubai.include?(file_name) 
                file_path = file_path << file_name
                # puts file_path
                file_path
                file = File.open(file_path,"r+")
                file.inspect
                file.read
                # puts file.inspect
                # puts file.read


                csv = CSV.read(file_path, :headers=>true)
                
                #For Maximum Temperature
                size = csv['Max TemperatureC'].size
                
                for i in 0...size
                    if max_temp.to_i < csv['Max TemperatureC'][i].to_i
                        max_temp = csv['Max TemperatureC'][i]
                        max_temp_date= csv['GST'][i]
                        max_temp_city = "Dubai"
                        # puts "max"
                    end
                end

                #For Minimum Temperature
                size = csv['Min TemperatureC'].size
                
                for i in 0...size
                    if min_temp.to_i > csv['Min TemperatureC'][i].to_i
                        min_temp = csv['Min TemperatureC'][i]
                        min_temp_date= csv['GST'][i]
                        min_temp_city = "Dubai"
                        # puts "max"
                    end
                end

                #For Maximum Humadity
                size = csv['Max Humidity'].size
                
                for i in 0...size
                    if max_hum.to_i < csv['Max Humidity'][i].to_i
                        max_hum = csv['Max Humidity'][i]
                        max_hum_date= csv['GST'][i]
                        max_hum_city = "Dubai"
                        # puts "max"
                    end
                end

            elsif
                puts "no file exist"  
            end

        elsif city == "lahore"
            # puts "Lahore"
            file_name = "#{city}_weather_#{year}_#{mon}.txt"
            if filenames_lahore.include?(file_name) 
                file_path = file_path << file_name
                # puts file_path
                file_path
                file = File.open(file_path,"r+")
                file.inspect
                file.read
                # puts file.inspect
                # puts file.read


                csv = CSV.read(file_path, :headers=>true, :skip_blanks=>true)
                size = csv['Max TemperatureC'].size
                
                for i in 0...size
                    # puts "in loop"    # ... tells ruby to exclude the last number (here 10 if we .. only then it includes the last num)
                    if max_temp.to_i < csv['Max TemperatureC'][i].to_i
                        max_temp = csv['Max TemperatureC'][i]
                        max_temp_date= csv['PKT'][i]
                        max_temp_city = "Lahore"
                        # puts "max"
                    end
                end

                #For Minimum Temperature
                size = csv['Min TemperatureC'].size
                for i in 0...size
                    if min_temp.to_i > csv['Min TemperatureC'][i].to_i
                    min_temp = csv['Min TemperatureC'][i]
                    min_temp_date= csv['PKT'][i]
                    min_temp_city = "Lahore"
                    # puts "max"
                    end
                end
                
                #For Maximum Humadity
                size = csv['Max Humidity'].size
                for i in 0...size
                    if max_hum.to_i < csv['Max Humidity'][i].to_i
                    max_hum = csv['Max Humidity'][i]
                    max_hum_date= csv['PKT'][i]
                    max_hum_city = "Lahore"
                    # puts "max"
                    end
                end

            elsif
                puts "no file exist"  
            end
        elsif city == "Murree"
        #  puts "Murree"
        #  countMurree+=1
         file_name = "#{city}_weather_#{year}_#{mon}.txt"
         if filenames_Murree.include?(file_name) 
             file_path = file_path << file_name
            #  puts file_path
             file_path
             file = File.open(file_path,"r+")
             file.inspect
             file.read
            #  puts file.inspect
            #  puts file.read


             csv = CSV.read(file_path, :headers=>true)
             size = csv['Max TemperatureC'].size
             
             for i in 0...size
                 # puts "in loop"    # ... tells ruby to exclude the last number (here 10 if we .. only then it includes the last num)
                 if max_temp.to_i < csv['Max TemperatureC'][i].to_i
                     max_temp = csv['Max TemperatureC'][i]
                     max_temp_date= csv['PKT'][i]
                     max_temp_city = "Murree"
                     # puts "max"
                 end
             end

            #For Minimum Temperature
            size = csv['Min TemperatureC'].size
            for i in 0...size
                if min_temp.to_i > csv['Min TemperatureC'][i].to_i
                min_temp = csv['Min TemperatureC'][i]
                min_temp_date= csv['PKT'][i]
                min_temp_city = "Murree"
                # puts "max"
                end
            end
                             
            #For Maximum Humadity
            size = csv['Max Humidity'].size
            for i in 0...size
                if max_hum.to_i < csv['Max Humidity'][i].to_i
                max_hum = csv['Max Humidity'][i]
                max_hum_date= csv['PKT'][i]
                max_hum_city = "Murree"
                # puts "max"
                end
            end
         elsif
             puts "no file exist"  
         end
        end
    end
            # count+=1
        
    # file = File.open(file_open,"r+")
    # puts file.inspect
    # puts file.read
end

puts "Highest Temperature: #{max_temp}C on #{max_temp_date} in city #{max_temp_city}" 
puts "Lowest Temperature: #{min_temp}C on #{min_temp_date} in city #{min_temp_city}"
puts "Highest Humidity: #{max_hum}C on #{max_hum_date} in city #{max_hum_city}"
