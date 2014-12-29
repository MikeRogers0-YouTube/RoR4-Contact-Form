class ContactUsController < ApplicationController
  before_action :setup_contact_form

  def index
  end

  def submit_form
    render :index
  end

  def thanks
  end

  private
  def setup_contact_form
    @contact_form = nil
  end

  def contact_form_params
    params.require(:contact_form).permit!
  end
end
