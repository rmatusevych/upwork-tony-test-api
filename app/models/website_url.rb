class WebsiteUrl < ApplicationRecord
  validates :url, presence: true

  validates_format_of :url, :with => /[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/

end
