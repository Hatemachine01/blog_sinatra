post '/like' do
  p "ENTRO" * 60
  id= params.keys[0]
  @post=Question.find_by_id(id)
  @post.likes +=1
  @post.save
  @post
  if request.xhr?
    p "ENTRO REQUEST"
    erb :_likes , :layout => true
  end
end
