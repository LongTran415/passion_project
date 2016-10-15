
get '/portfolios/new' do
  @portfolios = Portfolio.all
  erb :'/portfolios/new'
end

get '/portfolios/:id' do
  @portfolio = Portfolio.find(params[:id])
  erb :'portfolios/show'
end

post '/portfolios' do
  @portfolio = Portfolio.create(title: params[:title], user_id: session[:id])
  redirect "/portfolios/#{@portfolio.id}"
end