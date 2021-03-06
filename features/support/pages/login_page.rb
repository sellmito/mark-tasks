class LoginPage < SitePrism::Page
  set_url '/'
  element :input_email, '#login_email'
  element :input_password, 'input[name=password]'
  element :login_button, 'button[id=btLogin]'
  element :alert, '.alert-login'

  def do_login(email, password)
    input_email.set email
    input_password.set password
    login_button.click
  end
end
