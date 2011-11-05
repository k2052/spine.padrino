class Page
  include MongoMapper::Document 
  plugin MongoMapper::Plugins::Timestamps

  key :name, String
  key :body, String
  timestamps!
end