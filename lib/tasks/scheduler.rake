desc "This task is called by the Heroku scheduler add-on"
task :soundcloud => :environment do
  puts "Updating feed..."
  SoundcloudCheckerJob.new.perform
  puts "done."
end
