enable :sessions


get "/sign_on" do
  if 
    session[:email] != nil
    redirect to "/"
  else

  erb :registration
  end 
end


get "/error" do
"ERROR"
end



get "/profile" do

  user_id = session[:user_id]
  @user = User.find_by_id(user_id)
  erb :profile

end



post "/sign_on" do
  
    name = params[:name]
    email = params[:email]
    password = params[:password]
    user_info = User.new(name: name, email: email, password: password)
    user_info.save
    session[:user_id] = user_info.id
    session[:email] = user_info.email
    redirect to '/'
  
end



post '/login' do
  @email = params[:email]
  password = params[:password]
  comparison = User.authenticate(@email, password)
   if comparison == nil
     redirect '/error'

   else
    session[:email] = params[:email]
    @user = User.find_by_email(@email) #OBJETO
    @user = User.find_by_email(params[:email])
    @user.id
    session[:user_id] = @user.id
    redirect '/'
   end
  end




post '/logout' do
  session.delete(:email)
  redirect to '/'
end

