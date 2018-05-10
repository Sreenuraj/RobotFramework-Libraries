*** Settings ***
Documentation  This is to understand the dialogs lib
Library  Dialogs
Resource  ../Resources/Web/Common.robot
Resource  ../Resources/Web/Amazon_app.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${URL} =  https://www.amazon.in/
${BROWSER} =  chrome
${SEARCH_TERM} =  alexa

*** Test Cases ***
User search for a product
    [tags]  smoke

    # Using dialog user is asked to select a browser
    ${new_browser} =  get selection from user  Which browser?  chrome  ff  safari
    set global variable  ${BROWSER}  ${new_browser}
    Amazon_app.Go to the url
    Amazon_app.Search for a product

    # Using dialog user can do a manual step
    Execute Manual Step  Do something manually!  It failed!

User add product to cart
    #Amazon_app.Go to the url
    #Amazon_app.Search for a product
    # Using dialog we can pause the testcase execution
    Pause Execution
    Amazon_app.Add product to cart
