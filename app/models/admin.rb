class Admin < User

  validates_presence_of :name, :last_name
end
