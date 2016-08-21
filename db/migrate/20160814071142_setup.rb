class Setup < ActiveRecord::Migration
  def self.up
    # create default location account
    location = Location.new :name => "Test location 1",
                    :code => "001"
    location.save
    location = Location.new :name => "Test location 2",
                    :code => "002"
    location.save

  end
end
