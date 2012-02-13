class Firm < ActiveRecord::Base

  def lastlogin
 @log=Loger.find(:last,:conditions => "objid = "+self.id.to_s+" and objtype = 'firm' and accin = 1")
 if @log!=nil
   return @log.created_at.to_s
 else
 return nil
 end
end
end
