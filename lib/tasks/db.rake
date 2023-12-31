namespace :db do
  desc 'Delete all records from all models'
  task delete_all_records: :environment do
    ActiveRecord::Base.connection.disable_referential_integrity do
      ActiveRecord::Base.descendants.each do |model|
        next if model.abstract_class? || model == ActiveRecord::SchemaMigration

        puts "Deleting all records from #{model.name}..."
        model.delete_all
      end
    end
  end
end
