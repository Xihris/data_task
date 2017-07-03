class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @units = Unit.where(user_id: params[:id], complete: false).order(:date_end)
  

    def cikle
      @news_page.css('.inner-wrap').css('.row').css('.article-list').css('.list-row').each do |row|
      @news_date = row.css('.info').css('a').text.to_s
      @news_date = @news_date.gsub(/^\d{2}:\d{2}/, "")
      @news_date = @news_date.gsub(/[^0-9]/, " ").split(' ').map(&:to_i)
      @news_date = Date.new(@news_date[2], @news_date[1], @news_date[0])

      @link = row.css('h2').css('a').first.attributes['href'].text.chomp
      @links << @link if @user_date <= @news_date
    end
# end
  # reg_num = 2209
  date = '01.01.2017'
  
   @links = []
    @page_count = 2

# puts "регистрационный номер"
# gets.to_i

  parsed_page = Nokogiri::HTML(open("http://bankir.ru/bank/search/?txt_title=&city=0&txt_regn=2209&txt_okpo=&txt_bic=&txt_swift=&form-closed=0"))

  bankir_id = parsed_page.css('.banks-list').css('.row').css('.title').css('a').first.attributes['href'].value.to_s
  bankir_id = bankir_id.gsub(/[^0-9]/, "")

  @news_page = Nokogiri::HTML(open("http://bankir.ru/novosti/?b=#{bankir_id}"))

# puts "Какого числа смотрели последний раз? "
  @user_date = date.chomp.gsub(/[^0-9]/, " ").split(' ').map(&:to_i)
  @user_date = Date.new(@user_date[2], @user_date[1], @user_date[0])

    cikle
    while @user_date < @news_date
      @news_page = Nokogiri::HTML(open("http://bankir.ru/novosti/page/#{@page_count}/?b=#{bankir_id}"))
      cikle
      @page_count += 1
    end
  end

  def index
   
  end
# end

# file = File.new("./#{reg_num}.txt", "a:UTF-8")



  def update
  end
end
end
