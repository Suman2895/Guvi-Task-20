*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/variables.robot
Resource    ../Resources/keyword.robot

Test Setup       Open Saucedemo page
Test Teardown    Close Browser

*** Test Cases ***
Test Case 1: Login with Valid credentials of Saucedemo
    [Documentation]    Test to verify user can login successfully of Saucedemo page.
    Login With Credentials    ${Valid_user}    ${Valid_password}
    Verify Successful Login

Test Case 2: Login with Invalid credentials of Saucedemo
    [Documentation]    Test to verify user see an Errormessage of Saucedemo page.
    Login With Credentials    ${Invalid_user}    ${Invalid_password}
    Verify UnSuccessful Login

Test Case 3: Add Single product & verify cart
    [Documentation]    Test to verify user can Add a product to cart on Saucedemo page.
    Login With Credentials    ${Valid_user}    ${Valid_password}
    Add Single Product To Cart

Test Case 4: Add Multiple product & verify cart Items
    [Documentation]    Test to verify user can Add Multiple products to cart on Saucedemo page.
    Login With Credentials    ${Valid_user}    ${Valid_password}
    Add Multiple Products To Cart
    Verify Checkout page