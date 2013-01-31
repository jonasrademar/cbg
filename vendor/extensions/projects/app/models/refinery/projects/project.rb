module Refinery
  module Projects
    class Project < Refinery::Core::BaseModel
      self.table_name = 'refinery_projects'

      attr_accessible :title, :description, :completed, :client, :position

      acts_as_indexed :fields => [:title, :description, :client]

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
