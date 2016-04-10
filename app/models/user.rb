class User < ActiveRecord::Base 
  validates :sign_up_code,
    presence: true,
    inclusion: { in: ["mlkclub69"] }
    has_many :skills
    has_many :snippits
    has_many :lessons
    has_many :help_tickets
    has_many :courses
    validates :username, :firstname, :lastname,
    presence: true
    
    has_attached_file :avatar, styles: {large: "600x600>", medium: "300x300>", thumb: "50x50#"}, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  # The rest of your model
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
devise :database_authenticatable, :authentication_keys => [:username]

enum role: [:user, :beginner, :intermediate, :advanced, :master]
end