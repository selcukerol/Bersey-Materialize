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

get '/sartlar' do

   erb :sartlar    

end


get '/urunler' do

   erb :urunler     

end

get '/urunler/skoc' do

   erb :"urunler/skoc"     

end

get '/urunler/termal' do

   erb :"urunler/termal"     

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
    flash[:confirm] = "Emailınız bize ulaşmıştır en yakın zamanda sizinle iletişime geçeceğiz"	
    redirect '/iletisim'   

end	

###########==================================================================================##############

                                  ###### ENGLISH SITE REQUESTS #####

##########===================================================================================##############

get '/en' do

  erb :"en/home", :layout => :'en/layout_en'    

end

get '/en/aboutus' do

   erb :"en/aboutus", :layout => :'en/layout_en'    

end

get '/en/terms' do

   erb :"en/terms", :layout => :'en/layout_en'    

end


get '/en/products' do

   erb :"en/products", :layout => :'en/layout_en'     

end

get '/en/products/scotch' do

   erb :"en/products/scotch", :layout => :'en/layout_en'     

end

get '/en/products/thermal' do

   erb :"en/products/thermal", :layout => :'en/layout_en'     

end

get '/en/references' do

   erb :"en/references", :layout => :'en/layout_en'

end  

get '/en/contactus' do

   erb :"en/contactus", :layout => :'en/layout_en'    

end

post '/en/contactus' do

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
    redirect '/en/contactus'   

end

###########==================================================================================##############

                                  ###### RUSSIAN SITE REQUESTS #####

##########===================================================================================##############

get '/ru' do

  erb :"ru/dom", :layout => :'ru/layout_ru'    

end

get '/ru/naschetnas' do

   erb :"ru/naschetnas", :layout => :'ru/layout_ru'    

end

get '/ru/terms' do

   erb :"ru/terms", :layout => :'ru/layout_ru'    

end


get '/ru/produkt' do

   erb :"ru/produkt", :layout => :'ru/layout_ru'     

end

get '/ru/produkt/skoc' do

   erb :"ru/produkt/skoc", :layout => :'ru/layout_ru'     

end

get '/ru/produkt/termal' do

   erb :"ru/produkt/termal", :layout => :'ru/layout_ru'     

end

get '/ru/ssylka' do

   erb :"ru/ssylka", :layout => :'ru/layout_ru'

end  

get '/ru/svyazat' do

   erb :"ru/svyazat", :layout => :'ru/layout_ru'    

end

post '/ru/svyazat' do

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
    redirect '/ru/svyazat'   

end