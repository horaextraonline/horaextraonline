module PageHelper
  def google_maps_key
    env = ENV['RAILS_ENV'] || RAILS_ENV
    @gmaps_keys = YAML.load_file(Rails.root.join('config/google_map_key.yml'))[env] 
    @gmaps_keys[request.env['SERVER_NAME']]
  end
  
end
