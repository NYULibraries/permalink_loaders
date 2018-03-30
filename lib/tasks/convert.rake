require_relative '../salon_loaders'

namespace :salon_loaders do

  namespace :libguides do
    desc 'Generate a Redis-ready key/value txt file from LibGuides data; provide envvars LIB_GUIDES_CLIENT_ID and LIB_GUIDES_CLIENT_SECRET'
    task :txt do
      SalonLoaders::Sources::Libguides.new.write_txt "libguides.txt"
    end

    desc 'Generate a Redis-ready key/value json file from LibGuides data'
    task :json do
      SalonLoaders::Sources::Libguides.new.write_json "libguides.json"
    end
  end

end
