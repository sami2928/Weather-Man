require_relative './Weatherman_Problem_01'
require_relative './Weatherman_Problem_02'
require_relative './Weatherman_Problem_03'
require_relative './Weatherman_Problem_04'
#Command line Arguments
flaf = ARGV[0]
year = ARGV[1]
city = ARGV[2]
month = ARGV[3]
# file_path = ARGV[4]
case flaf
when '-e'
    weather = Weather.new
    weather.arguments_list(city, year, month)
    weather.max_temp 

when '-a'
    weather_avg = WeatherAverage.new
    weather_avg.arguments_list(city, year, month)
    weather_avg.avg_max_temp
    weather_avg.avg_min_temp
    weather_avg.avg_humadity
when '-c'
    chart = WeatherBarChart.new
    chart.arguments_list(city, year, month)
    chart.bar_chart
when '-d'
    chart = WeatherChart.new
    chart.arguments_list(city, year, month)
    chart.bar_chart
end