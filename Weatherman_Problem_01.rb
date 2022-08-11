require 'csv'
#Array of Max Temperature
$max_tmp = []
$cities = ["lahore","Dubai","Murree"]
$month = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
class Weather
    def arguments_list(city, year, month)
        @city = city    
        @year = year
        @month = month
    end
    def max_temp
        # $file_path = "/home/sami/projects/WhethermanProblem/#{@city}_weather/"
        filenames = Dir.chdir("/home/sami/projects/WhethermanProblem/#{@city}_weather/") { Dir.entries(".")}
        filenames.sort!
        # puts filenames
        # $month.each do |mon|
        # file_name = "#{@city}_weather_#{@year}_#{mon}.txt"
        # file_names = file_names << file_name
        # if file_names.include?(file_name)
        #     puts file_names

        # elsif
        #     puts "File not Exists"  
        # end

        # end
        
    end


    #  project_path = "/home/sami/projects/Whetherman Problem/"
    #  city = $folder_path.split('_')
    #  puts city    
end