enable :sessions


get "/ask_question" do

	if 
		
    	session[:email] == nil
    	redirect to "/error"
  	else

  		erb :question_form
	end
end

get "/replies/:id" do
	id = params[:id]
	@question = Question.find_by_id(id)
	erb :replies
end

get "/answer_question/:id" do 
	if 
		
    	session[:email] == nil
    	redirect to "/error"
  	else

	@answer_id = params[:id]
	erb :answer_form
	end
end

post "/ask_question" do

 	title = params[:title]
 	content = params[:content]
 	question=Question.create(title: title, content: content) 
 	id = session[:user_id]
 	user = User.find_by_id(id)
 	user.questions << question
 	redirect to "/"

end



post "/answer_question" do
	array = []
	params.each do |key, value|
	array << key
	end
	post_id = array[1]
	content = params[:content]
    answer=Answer.create(content: content)
    id = session[:user_id]
    user = User.find_by_id(id)
    @question = Question.find_by_id(post_id)
    user.answers  << answer
    @question.answers << answer
    redirect "/"
end