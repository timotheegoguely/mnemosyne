class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  skip_before_action :verify_authenticity_token

  def twitter
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      if session[:thesis_title]
        title = session[:thesis_title]
        subtitle = session[:thesis_subtitle]
        school = session[:thesis_school_id]
        diploma_id = session[:thesis_diploma_id]
        year = session[:thesis_year]
        tags = session[:thesis_tags]
        thesis = Thesis.new(title: title, subtitle: subtitle, year: year, school: School.find(session[:thesis_school_id]) )
        thesis.user = resource
        thesis.tag_list.add(tags, parse: true)
        thesis.diploma = Diploma.find(diploma_id)
        thesis.save
        session_cleaner
      end

      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Twitter") if is_navigational_format?
    else
      session["devise.twitter_data"] = request.env["omniauth.auth"].except("extra")

      puts @user.errors

      redirect_to new_user_registration_url
    end
  end

end
