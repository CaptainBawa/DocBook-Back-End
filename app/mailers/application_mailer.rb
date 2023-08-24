# frozen_string_literal: true

# The `ApplicationMailer` class is a Ruby class that extends `ActionMailer::Base` and sets default
# values for the `from` email address and the layout template.
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
