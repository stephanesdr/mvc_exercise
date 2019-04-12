# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'stadlerstephane@gmail.com'
  layout 'mailer'
end
