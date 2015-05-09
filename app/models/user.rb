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
  has_many :announcements, :through => :albums
  has_many :albums, :through => :artists

  has_attached_file :avatar,
    :styles => { :medium => "600x600>", :thumb => "100x100>" },
    :default_url => "/images/:style/missing.jpg"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


end
