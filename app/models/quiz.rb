class Quiz < ActiveRecord::Base
  has_many :qs, order: :order
  has_many :as
  accepts_nested_attributes_for :qs, :allow_destroy => true
  accepts_nested_attributes_for :as, :allow_destroy => true

  has_attached_file :img
  validates_attachment_content_type :img, :content_type => /\Aimage\/.*\Z/

  def find_answer(results)
    freq = results.inject(Hash.new(0)) { |h,v| h[v] += 1; h }

    (results.length/3).times do
      code = as.sample.code
      freq[code] += 1
      puts freq
    end

    code = results.max_by { |v| freq[v] }
    as.where(code: code).first
  end

end
