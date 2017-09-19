module HeaderElements
  def account_link
    $browser.a(text: 'Account')
  end
end