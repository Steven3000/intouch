class SoundcloudMailer < ApplicationMailer

  def soundcloud(body)


    mail(body: body,  to: "wchi_2000@yahoo.com", subject: "SoundCloud API JOB")
  end

end
