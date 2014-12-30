require 'features/acceptance_helper'

feature 'Contact Form' do
  before do
    # check the emails
    clear_emails
  end

  scenario 'User submits contact form, it saves input to the database and emails the admin' do
    # go to the page
    visit contact_us_path

    # Fill in the form
    within 'form.user-form' do
      fill_in 'Name', with: 'John Doe'
      fill_in 'Email', with: 'test@example.com'
      fill_in 'Message', with: 'Apple peanut butter'

      click_on 'Submit'
    end

    # The form should have submitted ok, so tell the user that.
    expect(page).to have_content 'Contact recieved'

    # There should be a message in the database
    expect(ContactForm.count).to eq(1)

    # It notified the admin of the site via email
    open_email 'admin@genericapp.com'
    expect(current_email.header('Subject')).to eq 'Message from contact form'
    expect(current_email).to have_content 'Apple peanut butter'
  end
end
