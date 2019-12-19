require_relative '../bin/environment.rb'

class Pokemon

    attr_accessor :id, :name, :type, :db

    def initialize(id:, name:, type:, db:)
        @id = id
        @name = name
        @type = type
        @db = db
    end

    def self.save(name, type, db)
    sql = <<-SQL
    insert into pokemon (name, type) values(?, ?)
    SQL

    DB[:conn].execute(sql, name, type)
    end
end
