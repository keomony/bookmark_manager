module DataMapperStarter

  def starter
    DataMapper::Logger.new($stdout, :debug)
    DataMapper.setup(:default, 'postgres://localhost/bookmark_manager_test')
    DataMapper.finalize
    DataMapper.auto_upgrade!
  end

end
