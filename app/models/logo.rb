class Logo < ActiveRecord::Base
  attr_accessible :credits, :description, :end_date, :image, :published, :start_date, :title

  has_attached_file :image

  def to_param
    "#{self.id}-#{self.title.parameterize}"
  end
end
