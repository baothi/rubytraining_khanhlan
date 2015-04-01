class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  before_save :add_authen_token

  def add_authen_token
  	byebug
  	#self.authen_token = params[:authenticity_token]
end
end
