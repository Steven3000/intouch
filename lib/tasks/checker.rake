namespace :checker do
  task soundcloud: :environment do
    SoundcloudCheckerJob.new.perform
  end
end
