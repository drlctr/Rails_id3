class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :email_on_create

private
	def email_on_create 
		UserMailer.notification_email(self).deliver
		UserMailer.welcome_email(self).deliver
	end

end
