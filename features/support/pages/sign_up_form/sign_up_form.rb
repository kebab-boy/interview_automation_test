require_relative 'sign_up_form_elements'

module Pages
  def sign_up_form
    @sign_up_form ||= SignUpForm.new
  end

  class SignUpForm
    include SignUpFormElements
    def visit
      # extract the base url to an environments config file when we need
      # to run against more than one environment
      $browser.goto 'https://staging-web.farmdrop.com/signup'
    end

    def enter_email(email)
      email_field.set email
    end

    def enter_password(password)
      password_field.set password
    end

    def enter_postcode(postcode)
      postcode_field.set postcode
    end

    def click_submit
      submit_button.click
    end
  end
end