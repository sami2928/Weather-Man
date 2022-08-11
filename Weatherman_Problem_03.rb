require 'csv'
require 'colorize'
#Array of Max & Min Temperature
$max_tmp = []
$min_tmp = []
class WeatherBarChart
    def arguments_list(city, year, month)
      @city = city    
      @year = year
      @month = month
      $file_path = "/home/sami/projects/WhethermanProblem/#{@city}_weather/#{@city}_weather_#{@year}_#{@month}.txt"
      # @file_path = file_path
    end
    def bar_chart
       # Copy data of Max Temperature Coloumn into max_tmp Array
       CSV.foreach($file_path) {|row| $max_tmp << row[1].to_i}
       # Copy data of Min Temperature Coloumn into max_tmp Array
       CSV.foreach($file_path) {|row| $min_tmp << row[3].to_i}
       # Zip Two Array Means arr1=[1,2,3] arr2=[4,5,6] the zip array = [[1,4],[2,5],[3,6]]
       zip_array = $max_tmp.zip($min_tmp)
       loop do
          index = 0
          zip_array.each do |max, min|
          print "#{index} "
          print "+".red * max
          puts "#{max}C"
          print "#{index} "
          print "+".blue * min
          puts "#{min}C"
          index += 1
          end
         break
       end
    end
end