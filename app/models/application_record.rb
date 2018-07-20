class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  before_save :normalize_blank_values

  def normalize_blank_values
    attributes.each do |column, value|
      self[column] = nil if self[column].kind_of? String and self[column].empty?
    end
  end
end
