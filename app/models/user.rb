class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #has_many :virtues, dependent: :destroy
  #has_many :items, through: :virtues

  #has_and_belongs_to_many :acts
  acts_as_followable
  acts_as_follower
  
  has_many :events
  has_many :lists
  has_many :acts, :through => :lists
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :last_name, presence: :true
end
