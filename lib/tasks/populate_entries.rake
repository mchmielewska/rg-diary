namespace :populate_entries do
    task :generate => :environment do
        titles = ["Title 1", "Title 2", "Title 3"]
        contents = ["Content 1", "Content 2", "Content 3"]
        titles.each do |title|
            Entry.create(title: title, contents: contents.sample, author: "Monika")
        end
        puts "I'm generated"
    end
end
