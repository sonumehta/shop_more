def full_title(page_title)
	    base_title = "ShopMore-Online shopping website"
	    if page_title.empty?
	      base_title
	    else
	      "#{base_title} | #{page_title}"
	    end
	  end

include ApplicationHelper

def valid_signin(user)
  fill_in "Email",    with: user.email_id
  fill_in "Password", with: user.password
  click_button "Sign in"
end

RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    expect(page).to have_selector('div.alert.alert-error', text: message)
  end
end
