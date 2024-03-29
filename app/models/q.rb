class Q < ActiveRecord::Base
  belongs_to :quiz
  has_many :options
  accepts_nested_attributes_for :options, :allow_destroy => true
end
