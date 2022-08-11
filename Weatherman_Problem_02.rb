require 'csv'

#Array of Max Temperature
$max_tmp = []

class WeatherAverage
  def arguments_list(city, year, month)
        @city = city    
        @year = year
        @month = month
        $file_path = "/home/sami/projects/WhethermanProblem/#{@city}_weather/#{@city}_weather_#{@year}_#{@month}.txt"
    end

     def avg_max_temp
        # Copy data of Max Temperature Coloumn into max_tmp Array
        CSV.foreach($file_path) {|row| $max_tmp << row[1].to_i}
        #Size of Max Temperature Array
        max_tmp_size = $max_tmp.size-1
        #Calculate Sum of Temperature Array
        total_sum = $max_tmp.inject{|sum,num| sum+=num}
        #Calculate Average of Temperature Array Sum 
        total_sum_avg = total_sum / max_tmp_size
        puts "Highest Average: #{total_sum_avg}C"
    end

    def avg_min_temp
        # Copy data of Min Temperature Coloumn into max_tmp Array
        CSV.foreach($file_path) {|row| $max_tmp << row[3].to_i}
        #Size of Max Temperature Array
        max_tmp_size = $max_tmp.size-1
        #Calculate Sum of Temperature Array
        total_sum = $max_tmp.inject(0){|sum,num| sum+=num}
        #Calculate Average of Temperature Array Sum 
        total_sum_avg = total_sum / max_tmp_size
        puts "Lowest Average: #{total_sum_avg}C"
    end
    
    def avg_humadity
        CSV.foreach($file_path) do |row|
            $max_tmp << row[8].to_i
        end
        #Size of Max Temperature Array
        max_tmp_size = $max_tmp.size-1
        #Calculate Sum of Temperature Array
        total_sum = $max_tmp.inject(0){|sum,num| sum+=num}
        #Calculate Average of Temperature Array Sum 
        total_sum_avg = total_sum / max_tmp_size
        puts "Average Humidity: #{total_sum_avg}%"
    end
end
