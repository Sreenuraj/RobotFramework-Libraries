*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGIN_USERNAME_TEXTBOX} =  id=ap_email

*** Keywords ***
Verify Page Loaded
    Page Should Contain Textfield  ${SIGIN_USERNAME_TEXTBOX}