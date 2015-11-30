class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  attribute :message, :validate => true
  attribute :nickname, :captcha => true

def headers
        {

          :subject => "Contact Form",
           :to => "maricha177@gazeta.pl",
           :from => %("#{name}" <#{email}>)
        }
      end
end
