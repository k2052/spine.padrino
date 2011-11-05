MongoMapper.connection = Mongo::Connection.new('localhost', nil, :logger => logger)

case Padrino.env
  when :development then MongoMapper.database = 'spine_padrino_development'
  when :production  then MongoMapper.database = 'spine_padrino_production'
  when :test        then MongoMapper.database = 'spine_padrino_test'
end
