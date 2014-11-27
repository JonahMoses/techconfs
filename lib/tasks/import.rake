desc "imports from rubyconferences.org github repo"
task :import => :environment do
  Importer.new.import(:current)
  Importer.new.import(:past)
end
