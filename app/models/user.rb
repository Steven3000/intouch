class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, uniqueness: {case_sesitive: false}
  validates :username, uniqueness: {case_sesitive: false}


  # has_one :feed a collection of songs through artists through subsriptions
  has_many :subscriptions
  has_many :artists, :through => :subscriptions
  has_many :songs, :through => :artists
  has_many :announcements, :through => :songs

  has_many :albums, :through => :artists

end
