class ContactForm < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, email: true
  validates :message, presence: true

  # Honeypot
  attr_accessor :telephone
  validates :telephone, inclusion: { in: [''] }
end
