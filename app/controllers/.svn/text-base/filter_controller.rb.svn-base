class FilterController < ApplicationController

layout "inner_firm"
before_filter :setwsfirm
before_filter :checkauth
  def index
  @firm_id=params[:firm_id].to_i
  @firm=Firm.find(@firm_id)
  @hl=Hairlength.find(:all)
  @hc=Haircolor.find(:all)
  @pcity=City.find(:all)
  @fcity=City.find(:all)
  @ed=Education.find(:all)
  @edform=Educationform.find(:all)
  @pcl=Pclevel.find(:all)
  @wg=Workgraphic.find(:all)
  @we=Workemployment.find(:all)
  @spec=Ankgroup.find(:all)
  @lang=Language.find(:all)
    if request.post?
      Selank.destroy_all(:firm_id => @firm_id,:payed => false)

      @filt="active = 1 and moderate = 1 "
      

      if params[:cb_sex]
           @filt=@filt.to_s+" and sex = "+params[:sex].to_s
      end
      if params[:cb_bd]
      @d=params[:post]["bd(1i)"],"-",params[:post]["bd(2i)"],"-",params[:post]["bd(3i)"]
      @bd=Date.parse(@d.to_s)
      @filt=@filt.to_s+" and birthday "+params[:sel_bd].to_s+" '"+@d.to_s+"'"
      end
      if params[:cb_gw]
           @filt=@filt.to_s+" and growth "+params[:sel_gw].to_s+" "+params[:gw].to_s
      end
      if params[:cb_w]
           @filt=@filt.to_s+" and weight "+params[:sel_w].to_s+" "+params[:w].to_s
      end
      if params[:cb_cs]
           @filt=@filt.to_s+" and clothessize LIKE '%"+params[:cs].to_s+"%'"
      end
      if params[:cb_bs]
           @filt=@filt.to_s+" and bootssize LIKE '%"+params[:bs].to_s+"%'"
      end
       if params[:cb_hl]
           @filt=@filt.to_s+" and hairlength_id "+params[:sel_hl].to_s+" "+params[:hl].to_s
      end
       if params[:cb_hc]
           @filt=@filt.to_s+" and haircolor_id "+params[:sel_hc].to_s+" "+params[:hc].to_s
      end
      if params[:cb_mer]
           @filt=@filt.to_s+" and merried = "+params[:mer].to_s
      end
      if params[:cb_pcity]
           @filt=@filt.to_s+" and passcity_id "+params[:sel_pcity].to_s+" "+params[:pcity].to_s
      end
      if params[:cb_sitship]
           @filt=@filt.to_s+" and citizenship = "+params[:sitship].to_s
      end
       if params[:cb_fcity]
           @filt=@filt.to_s+" and factcity_id "+params[:sel_fcity].to_s+" "+params[:fcity].to_s
      end
       if params[:cb_ed]
           @filt=@filt.to_s+" and education_id "+params[:sel_ed].to_s+" "+params[:ed].to_s
      end
       if params[:cb_edform]
           @filt=@filt.to_s+" and educationform_id "+params[:sel_edform].to_s+" "+params[:edform].to_s
      end
      if params[:cb_car]
           @filt=@filt.to_s+" and hascar = "+params[:car].to_s
      end
      if params[:cb_dlic]
           @filt=@filt.to_s+" and drivercard = "+params[:dlic].to_s
      end
      if params[:cb_medbook]
           @filt=@filt.to_s+" and hasmedbook = "+params[:medbook].to_s
      end
      if params[:cb_pcl]
           @filt=@filt.to_s+" and pclevel_id "+params[:sel_pcl].to_s+" "+params[:pcl].to_s
      end
      if params[:cb_wg]
           @filt=@filt.to_s+" and workgraphic_id "+params[:sel_wg].to_s+" "+params[:wg].to_s
      end
      if params[:cb_we]
           @filt=@filt.to_s+" and workemployment_id "+params[:sel_we].to_s+" "+params[:we].to_s
      end
      if params[:cb_cost]
           @filt=@filt.to_s+" and workcost "+params[:sel_cost].to_s+" "+params[:cost].to_s
      end
      
      @filt=@filt+' and ((selanks.payed = 0)or (selanks.payed is NULL))'
      if params[:cb_spec]
           @filt=@filt.to_s+" and anktogroups.ankgroup_id = "+params[:spec].to_s
      end
     if params[:cb_lang]
           @filt=@filt.to_s+" and anktolangs.language_id = "+params[:lang].to_s
      end
      @anks=Promoank.find(:all,:joins =>'LEFT JOIN selanks ON selanks.promoank_id=promoanks.id  LEFT JOIN anktogroups ON anktogroups.promoank_id=promoanks.id LEFT JOIN anktolangs ON anktolangs.promoank_id=promoanks.id ', :conditions => @filt,:group => ' promoanks.id')

      if @anks != nil
      for ank in @anks
       @selank=Selank.new
       @selank.firm_id=@firm_id
       @selank.promoank_id=ank.id
       @selank.fio=ank.fio
       @selank.payed=false
       @selank.save
      end
      redirect_to(firmmain_path_url(:page => '2'))
      else
       
      end
   
    end
  end

end
