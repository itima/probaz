class Selank < ActiveRecord::Base
  belongs_to :firm
  belongs_to :promoank

  def checkcontact
   @promoank=self.promoank
   if self.contact==@promoank.mobilephone.to_s+","+@promoank.factphone.to_s+","+@promoank.email.to_s
      return false
      else
      return true
      end
  end
end
