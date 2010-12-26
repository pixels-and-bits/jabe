namespace :import do
  namespace :mephisto do
    desc "import mephisto entries csv"
    task :entries => :environment do
      # NOTE: expects a csv with the following columns
      # "id","title","body","published_at"

      unless ENV['FILE']
        puts 'FILE not specified'
        exit 1
      end

      results = CsvMapper.import(ENV['FILE']) do
        map_to Entry

        after_row lambda { |row, entry|
          entry.draft = false
          entry.save!
        }

        read_attributes_from_file
      end
    end # :entries
    
    desc "import mephisto comments csv"
    task :comments => :environment do
      # NOTE: expects a csv with the following columns
      # "id","title","body","published_at"

      unless ENV['FILE']
        puts 'FILE not specified'
        exit 1
      end

      results = CsvMapper.import(ENV['FILE']) do
        map_to Comment

        after_row lambda { |row, comment|
          comment.save!
        }

        read_attributes_from_file
      end
    end # :comments
  end
end
