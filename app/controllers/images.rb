post '/images' do
  @image = Image.create(data: params[:data])
  redirect "/images/#{@image.id}"
end

get '/images/:id' do
  @image = Image.find(params[:id])
  erb :"images/show"
end
