
class Promoank < ActiveRecord::Base

  belongs_to :passcity
  belongs_to :education
  belongs_to :educationform
  belongs_to :pclevel
  belongs_to :workgraphic
  belongs_to :workemployment
  belongs_to :hairlength
  belongs_to :haircolor
  validates_presence_of :lname,:fname,:nameto, :message => 'Поле незаполнено!',:on => :update,:if => 'Promoank.find(self.id).checkemail == true'
  validates_numericality_of :workcost, :message => 'Поле должно быть числовым!',:on => :update,:if => 'Promoank.find(self.id).checkemail == true'
  validates_uniqueness_of :mobilephone,:if => 'mobilephone != ""  and Promoank.find(self.id).checkemail == true', :message => 'Номер мобильного телефона не уникален!',:on => :update
  validates_uniqueness_of :factphone,:if => 'factphone != "" and Promoank.find(self.id).checkemail == true', :message => 'Номер стационарного телефона не уникален!',:on => :update
  validates_format_of :mobilephone, :with => /^\+\d+\(\d+\)(\d+)$/,:if => 'mobilephone != ""  and Promoank.find(self.id).checkemail == true',:on => :update,:message => 'Неправельный формат'
  validates_format_of :factphone, :with => /^\+\d+\(\d+\)(\d+)$/,:if => 'factphone != ""  and Promoank.find(self.id).checkemail == true',:on => :update,:message => 'Неправельный формат'
  validates_uniqueness_of :email, :message => ' не уникальна!'


  HUMAN_ATTRIBUTES = {
    :lname => "Фамилия",
    :fname => "Имя",
    :nameto  => "Отчество",
    :workcost => "Ставка",
    :factphone=> "Домашний телефон",
    :mobilephone=> "Мобильный телефон",
    :email=> "Электронная почта"

  }

  def self.human_attribute_name(attr)
    HUMAN_ATTRIBUTES[attr.to_sym] || super
  end


  def fio
    return self.lname.to_s+" "+self.fname.to_s+" "+self.nameto.to_s
  end

  def hasphone
    if (self.mobilephone == '') and (self.factphone == '')
      return false
    else
      return true
    end
  end
  def hasphonerus
    @res=''

    if (self.mobilephone != '')
      @res='Только мобильный'
    end
    if (self.factphone != '') and (@res!='')
      @res='Оба'
    else
      if (self.factphone != '')
        @res='Только стационарный'
      end
    end
    if @res==''
      return "Телефоны неуказанны"
    else
      return @res
    end
  end
  def lastlogin
    @log=Loger.find(:last,:conditions => "objid = "+self.id.to_s+" and objtype = 'promo' and accin = 1")
    if @log!=nil
      return @log.created_at.to_s
    else
      return nil
    end
  end



end
