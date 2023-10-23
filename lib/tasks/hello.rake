namespace :my_namespace do
    desc "Print a welcome message"
    task :hello do
        puts "Hello, custom Rake task! Welcome to Rails."
    end

    desc "Check if the database is connected"
        task :check_db => :environment do
        begin
            ActiveRecord::Base.connection
            puts "Database is connected."
        rescue ActiveRecord::NoDatabaseError
            puts "Database is not connected."
        end
    end
end
