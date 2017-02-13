namespace :db do
  desc "seed database with production data"
  task :populate => :environment do
    Rake::Task["db:aisles_and_foods"].invoke
  end
end
