*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    Go To  ${URL}

Verify Page Load
    WAIT UNTIL PAGE CONTAINS  Your Amazon.in