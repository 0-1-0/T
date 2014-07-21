class Quiz < ActiveRecord::Base
  has_many :qs
  has_many :as
  accepts_nested_attributes_for :qs, :allow_destroy => true
end
