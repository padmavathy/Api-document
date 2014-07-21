class ApiList < ActiveRecord::Base
	has_many :api_methods, :dependent => :destroy
  validates :name, :presence => true
  default_scope :order => 'position'
end
