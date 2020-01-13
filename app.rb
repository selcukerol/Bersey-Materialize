require 'sinatra'
require 'sendgrid-ruby'
require 'ruby_http_client'
require 'sinatra/flash'

enable :sessions


before do
  @bodyclass = ' class="std"'
end

###########==================================================================================##############

                                  #TURKCE SITE SUNUMLARI#####

##########===================================================================================##############

get '/' do
  @bodyclass = ""
  erb :anasayfa	   

end

get '/hakkimizda' do

   erb :hakkimizda	   

end

get '/haber1' do

   erb :haber1    

end

get '/haber2' do

   erb :haber2    

end

get '/haber3' do

   erb :haber3    

end

get '/haber4' do

   erb :haber4    

end

get '/sartlar' do

   erb :sartlar    

end


get '/urunler' do

   erb :urunler     

end

get '/urunler/skoc' do

   erb :"urunler/skoc"     

end

get '/urunler/biokutle' do

   erb :"urunler/biokutle"     

end

get '/urunler/akiskan' do

   erb :"urunler/akiskan"     

end

get '/urunler/sicaksu' do

   erb :"urunler/sicaksu"     

end

get '/urunler/termal' do

   erb :"urunler/termal"     

end

get '/urunler/isikaybi' do

   erb :"urunler/isikaybi"     

end

get '/urunler/suborusu' do

   erb :"urunler/suborusu"     

end

get '/referanslar' do

   erb :referanslar

end  

get '/iletisim' do

   erb :iletisim	   

end

post '/iletisim' do

    p params
    p params[:email], params["email"]

    from = SendGrid::Email.new email: params[:email]
    subject = "Mail from #{params[:name]} #{params[:surname]} (#{params[:company]})"
    to = SendGrid::Email.new email: "selcuk_erol@hotmail.com"

    content = SendGrid::Content.new(
        type: 'text/plain',
        value: params[:comment] 
        )

    mail = SendGrid::Mail.new(from,subject,to,content)

    p mail

    sg = SendGrid::API.new( api_key: ENV['SENDGRID_API_KEY'])

    response = sg.client.mail._('send').post(request_body: mail.to_json)

    puts response.status_code
    puts response.body
    puts response.headers

    params.inspect
    flash[:confirm] = "We received your email, we will get back to you shortly"	
    redirect '/iletisim'   

end	

###########==================================================================================##############

                                  ###### ENGLISH SITE REQUESTS #####

##########===================================================================================##############

get '/en/' do

  erb :"en/home"    

end

get '/en/aboutus' do

   erb :"en/aboutus"    

end

get '/en/news1' do

   erb :"en/news1"    

end

get '/en/news2' do

   erb :"en/news2"    

end

get '/en/news3' do

   erb :"en/news3"    

end

get '/en/news4' do

   erb :"en/news4"    

end

get '/en/terms' do

   erb :"en/terms"    

end


get '/en/products' do

   erb :"en/products"     

end

get '/en/products/scotch' do

   erb :"en/products/scotch"     

end

get '/en/products/biomass' do

   erb :"en/products/biomass"     

end

get '/en/products/fluidized' do

   erb :"en/products/fluidized"     

end

get '/en/products/hotwater' do

   erb :"en/products/hotwater"     

end

get '/en/products/thermal' do

   erb :"en/products/thermal"     

end

get '/en/products/wasteheat' do

   erb :"en/products/wasteheat"     

end

get '/en/products/waterpipe' do

   erb :"en/products/waterpipe"     

end

get '/en/references' do

   erb :"en/references"

end  

get '/en/contactus' do

   erb :"en/contactus"    

end

###########==================================================================================##############

                                  ###### RUSSIAN SITE REQUESTS #####

##########===================================================================================##############

get '/ru/' do

  erb :"ru/home"    

end

get '/ru/aboutus' do

   erb :"ru/aboutus"    

end

get '/ru/news1' do

   erb :"ru/news1"    

end

get '/ru/news2' do

   erb :"ru/news2"    

end

get '/ru/news3' do

   erb :"ru/news3"    

end

get '/ru/news4' do

   erb :"ru/news4"    

end

get '/ru/terms' do

   erb :"en/terms"    

end


get '/ru/products' do

   erb :"ru/productru"     

end

get '/ru/products/scotch' do

   erb :"ru/products/scotch"     

end

get '/ru/products/biomass' do

   erb :"ru/products/biomass"     

end

get '/ru/products/fluidized' do

   erb :"ru/products/fluidized"     

end

get '/ru/products/hotwater' do

   erb :"ru/products/hotwater"     

end

get '/ru/products/thermal' do

   erb :"ru/products/thermal"     

end

get '/ru/products/wasteheat' do

   erb :"ru/products/wasteheat"     

end

get '/ru/products/waterpipe' do

   erb :"ru/products/waterpipe"     

end

get '/ru/references' do

   erb :"ru/references"

end  

get '/ru/contactus' do

   erb :"ru/contactus"    

end