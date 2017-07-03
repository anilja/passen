class Stop < ApplicationRecord
  belongs_to :busform

  def completed?
  	!completed_at.blank?
  end

end
