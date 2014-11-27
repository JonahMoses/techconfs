class Importer

  RUBYCONFERENCES = {
    current: "https://raw.githubusercontent.com/ruby-conferences/ruby-conferences-site/master/data/current.yml",
    past: "https://raw.githubusercontent.com/ruby-conferences/ruby-conferences-site/master/data/past.yml"
  }

  def import(selection)
    yaml_response = HTTParty.get(RUBYCONFERENCES[selection])
    conferences = YAML.parse(yaml_response).to_ruby
    conferences.each do |conf|
      Conference.where(conf.slice('name', 'dates', 'twitter')).first_or_create do |c|
        c.url = conf['url']
        c.location = conf['location']
      end
    end
  end

end
