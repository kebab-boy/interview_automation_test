module SignUpFormElements
  def email_field
    $browser.text_field(id: 'email')
  end

  def password_field
    $browser.text_field(id: 'password')
  end

  def postcode_field
    $browser.text_field(id: 'zipcode')
  end

  def submit_button
    $browser.button(id: 'email-signup-form-submit')
  end
end