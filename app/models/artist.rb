class Artist < ActiveRecord::Base
  has_many :songs

  has_many :subscriptions
  has_many :users, :through => :subscriptions
  has_many :announcements, :through => :songs


  has_many :albums, dependent: :destroy

  # has_many :albums, :through => :songs


  has_attached_file :avatar,
                    :styles => { :medium => "500x500>", :thumb => "100x100>" },
                    :default_url => "/images/:style/missing.png",
                    :storage => :s3,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

  def s3_credentials
    {:bucket => ENV['S3_BUCKET_NAME'],
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']}
  end

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/



  # def picture_url
  #   "artists/#{name.parameterize}.jpg"
  # end
  # def picture_url2
  #   "artists2/#{name.parameterize}.jpg"
  # end
  # def picture_url3
  #   "artists3/#{name.parameterize}.jpg"
  # end


end

