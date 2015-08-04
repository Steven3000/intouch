class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, uniqueness: {case_sesitive: false}
  validates :username, uniqueness: {case_sesitive: false}
  validates :zip_code, numericality: true
  validates :age, numericality: true

  # has_one :feed a collection of songs through artists through subsriptions
  has_many :subscriptions
  has_many :artists, :through => :subscriptions
  has_many :songs, :through => :artists
  has_many :announcements, :through => :songs
  has_many :announcements, :through => :albums
  has_many :albums, :through => :artists
  has_one :profile
  has_one :announcement

  has_attached_file :avatar,
    :styles => { :medium => "500x500>" },
    :default_url => "/images/:style/missing.jpg"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.username = auth.info.nickname
    end
  end

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end

  def password_required?
    super && provider.blank?
  end

  def update_with_password(params, *options)
    if encrypted_password.blank?
      update_attributes(params, *options)
    else
      super
    end
  end


end
