class Contact < MailForm::Base
  attribute :nazwa, :validate => true
  attribute :email, :validate => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  attribute :treść, :validate => true
  attribute :nickname, :captcha => true

def headers
        {

          :subject => "Contact Form",
           :to => "maricha177@gmail.com",
           :from => %("#{nazwa}" <#{email}>)
        }
      end
end
