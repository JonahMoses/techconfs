class Importer

  RUBYCONFDATA = "https://raw.githubusercontent.com/ruby-conferences/ruby-conferences-site/master/data/current.yml"

  def run
    response = HTTParty.get(RUBYCONFDATA)
    conferences = YAML.parse(response)
    conferences.to_ruby.each do |conf|
      Conference.where(conf.slice('name', 'dates', 'twitter')).first_or_create do |c|
        c.url = conf['url']
        c.location = conf['location']
      end
    end
  end


end
