class AdminNotifier < ApplicationMailer
  default from: "Generic App <admin@genericapp.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_notifier.contact_form.subject
  #
  def contact_form contact_form
    @contact_form = contact_form

    mail to: "admin@genericapp.com"
  end
end
