*** Variables ***
${URL}                  https://www.saucedemo.com/
${BROWSER}              Firefox
${Valid_user}           standard_user
${Valid_password}       secret_sauce
${Invalid_user}         locked_out_user
${Invalid_password}     wrong_pass
${First_name}           Sumanth
${Last_name}            k
${Postal_input}         123456

# Locators of Elements
${Username_field}       css=#user-name
${Password_field}       css=#password
${Login_button}         css=#login-button
${Title}                css=div.app_logo
${Error_msg}            css=button.error-button
${Menu_button}          css=button#react-burger-menu-btn
${Logout_button}        css=a#logout_sidebar_link
${Add_to_cart}          css=button#add-to-cart-sauce-labs-backpack
${Cart_icon}            css=a.shopping_cart_link
${Cart_items}           css=.cart_list
${Check_out}            css=button#checkout
${Checkout_page}        css=span.title
${First_name_field}     css=input#first-name
${Last_name_field}      css=input#last-name
${Postal_code_field}    css=input#postal-code
${Continue_checkout}    css=input#continue
${Checkout_Summary}     css=.summary_info
${Finish}               css=button#finish
${Order_msg}            css=h2.complete-header

# Locators of Products
@{Products_list}    sauce-labs-bike-light    sauce-labs-bolt-t-shirt    sauce-labs-fleece-jacket