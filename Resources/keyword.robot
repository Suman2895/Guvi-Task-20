*** Keywords ***
Open Saucedemo page
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window

Login with credentials
    [Arguments]    ${username}    ${password}
    Input text  ${Username_field}   ${username}
    Input text  ${Password_field}   ${password}
    Click Button    ${Login_button}

Verify Successful Login
    Wait Until Page Contains Element    ${Title}
    Click Button    ${Menu_button}
    Wait Until Page Contains Element   ${Logout_button}

Verify UnSuccessful Login
    Wait Until Page Contains Element    ${Error_msg}

Add Single Product To Cart
    Click Button    ${Add_to_cart}
    Click Element   ${Cart_icon}

Add Multiple Products To Cart
    FOR    ${item}    IN    @{Products_list}
    Click Button    css=button[data-test="add-to-cart-${item}"]
    END
    Click Element   ${Cart_icon}
    Wait Until Page Contains Element    ${Cart_items}

Verify Checkout page
    Click Button    ${Check_out}
    Wait Until Page Contains Element    ${Checkout_page}
    Input text      ${First_name_field}     ${First_name}
    Input text      ${Last_name_field}      ${Last_name}
    Input text      ${Postal_code_field}    ${Postal_input}
    Click Element   ${Continue_checkout}
    Wait Until Page Contains Element    ${Checkout_Summary}
    Click Button    ${Finish}
    Wait Until Page Contains Element    ${Order_msg}

Close Browser
    Close All Browsers