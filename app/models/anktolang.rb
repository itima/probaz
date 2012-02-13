class Anktolang < ActiveRecord::Base
  belongs_to :promoank
  belongs_to :language
  belongs_to :langlevel
end
