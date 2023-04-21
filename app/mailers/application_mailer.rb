class ApplicationMailer < ActionMailer::Base
  default from: 'hoge@hoge.com'
  layout 'mailer'
end
