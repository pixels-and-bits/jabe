class Admin::SettingsController < Admin::BaseController
  
  def update
    if SETTINGS.update_attributes(params[:settings])
      redirect_to admin_root_path, :notice => 'Settings updated'
    else
      render :action => :edit
    end
  end
end
