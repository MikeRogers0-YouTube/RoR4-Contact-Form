class ContactUsController < ApplicationController
  before_action :setup_contact_form, only: [:index, :submit_form]

  def index
  end

  def submit_form
    @contact_form.attributes = contact_form_params

    return redirect_to action: :thanks if @contact_form.save
    render :index
  end

  def thanks
  end

  private
  def setup_contact_form
    @contact_form = ContactForm.new
  end

  def contact_form_params
    params.require(:contact_form).permit!
  end
end
