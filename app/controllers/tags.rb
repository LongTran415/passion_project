get "/tags/:id" do
  @tag = Tag.find(params[:id])
  redirect "/images/#{@tag.image_id}"
end

post "/tags" do
  tag_names = Tag.tag_names_from_string(params[:tag])
  # come back and implement creating multiple tag objects (from the array)
end
