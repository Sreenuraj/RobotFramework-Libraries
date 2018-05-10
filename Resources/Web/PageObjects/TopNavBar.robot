*** Settings ***
Documentation    Amazon Top Navigation Bar
Library  SeleniumLibrary

*** Variables ***
${NAV_BAR_SEARCH_BOX} =  id=twotabsearchtextbox
${NAV_BAR_SEARCH_BUTTON} =  xpath=//div[@class='nav-search-submit nav-sprite']//input[@type='submit']

*** Keywords ***
Searching The Product
    Enter Product To Search
    Click On Search Button

Enter Product To Search
    input text  ${NAV_BAR_SEARCH_BOX}   ${SEARCH_TERM}

Click On Search Button
    click button  ${NAV_BAR_SEARCH_BUTTON}

