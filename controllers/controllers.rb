get "/" do
  erb :index
end

get "/login" do
  erb :login
end

get "/register" do
  erb :register
end

post "/post-login" do
  email_u = params.fetch("email")
  password_u = params.fetch("password")
  # puts emailU
  # puts passwordU
  user = Users.first(email: email_u, password: password_u)
  puts user
  # if !user.empty?
  #     @foundUser = true
  #     @privilege = user.privilege
  #     if @privilege == "mentor"
  #         redirect "/mentorW"
  #     elsif @privilege == "mentee"
  #         redirect "/menteeW"
  #     else
  #         redirect "/admin"
  #     end
  # else
  #     @foundUser = false
  # end

  user.name.to_s
end
