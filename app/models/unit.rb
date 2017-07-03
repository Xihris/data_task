class Unit < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :author
    
   
#     require 'open-uri'
# require 'nokogiri'

# # открываем страницу с помощью нокогири
# def parsing
    


#   f = open("http://www.banki.ru/news/lenta/page#{@page}/?d=#{@day}&m=#{@month}&y=#{@year}")
#   @parse = Nokogiri::HTML(f)
#   @page += 1
#   f.close
# end

# END_OF_NEWS = 'Новостей за выбранный период не найдено.'
# # puts 'Введите нужную дату: '
# # day_d = gets.chomp
# right_day = Date.today

# @day = right_day.day
# @month = right_day.month
# @year = right_day.year
# @page = 1
# links = []
# all_links = []
# link = []

# # вычисляем значение последней страницы
# parsing
# end_of_parse = @parse.css('div.widget:nth-child(5) > p:nth-child(2)').text

# # если последняя страница равна фразе, то заканчиваем цикл
# # цикл нужен что бы определить количество страниц
# parsing unless end_of_parse == END_OF_NEWS

# count = @page # присваеваем количество страниц переменной
# @page = 1 # обновляем значение первой страницы
# count.times do # собственно сам счетчик. Заново запускаем парсинг
#   parsing
#   @parse.css('ul.text-list:nth-child(2)').each do |once|
#     # добавляем новости как они есть ссылки и текст
#     links << once.css('li')
#   end
# end

# links.each do |x|
#   x.css('a').each do |y|
#     all_links << y.attr('href')
#   end
# end

# all_links.each do |x|
#   link << "http://www.banki.ru#{x}" if x !~ /http/ && x !~ /#reviewArea/
# end

end
