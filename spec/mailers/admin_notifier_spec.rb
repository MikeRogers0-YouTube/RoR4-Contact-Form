require "rails_helper"

RSpec.describe AdminNotifier, :type => :mailer do
  describe "contact_form" do
    let(:mail) { AdminNotifier.contact_form }

    it "renders the headers" do
      expect(mail.subject).to eq("Contact form")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
