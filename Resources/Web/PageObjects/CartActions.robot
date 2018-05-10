*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CHECKOUT_LINK_BUTTON} =  xpath=//a[@class='hucSprite s_checkout hlb-checkout-button']

*** Keywords ***
Verify Product Added
    wait until page contains  Order Sub-Total

Proceed To Checkout
    click link  ${CHECKOUT_LINK_BUTTON}