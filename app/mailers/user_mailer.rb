class UserMailer < ActionMailer::Base
  default from: "notification@lecter.com"

  def notification_email(user)
  	@user = user
  	@url = 'http://lecter.com/login'
  	mail(to: 'lecter@lecter.com', subject: "New user #{@user} on site!")
  end

  def welcome_email(user)
  	@user = user
  	@url = 'http://lecter.com/login'
  	mail(to:  @user.email, subject: 'Welcome to the site')
  end
end
