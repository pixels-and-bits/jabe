class Admin::EntriesController < Admin::BaseController
  def index
    @drafts  = Entry.drafts
    @published = Entry.published
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def create
    set_is_draft

    if @entry = Entry.create(params[:entry])
      redirect_to([:admin, @entry], :notice => 'Entry was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    set_is_draft
    @entry = Entry.find(params[:id])

    if @entry.update_attributes(params[:entry])
      redirect_to([:admin, @entry], :notice => 'Entry was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    Entry.find(params[:id]).destroy
    redirect_to(admin_entries_url)
  end

  private

    def set_is_draft
      params[:entry][:draft] = (params[:commit] =~ /draft/i).present?
    end
end
