namespace :todos do

  desc 'Delete old todos - call by todos:delete_items'
  task :delete_items => :environment do
    Todo.where("created_at <= ?", Time.now - 7.days).destroy_all
  end

end