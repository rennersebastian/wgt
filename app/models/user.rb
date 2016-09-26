class User < ApplicationRecord
	belongs_to :wg
	has_many :tasks
	
	validates :username, presence: true
	
	devise :database_authenticatable, :registerable,
		 :recoverable, :rememberable, :trackable, :validatable		 
		
	def login=(login)
    @login = login
	  end

	  def login
		@login || self.username || self.email
	  end
	
	def self.find_first_by_auth_conditions(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      elsif conditions.has_key?(:username) || conditions.has_key?(:email)
        where(conditions.to_h).first
      end
    end
end
