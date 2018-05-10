*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ADD_TO_CART_BUTTON} =  id=add-to-cart-button

*** Keywords ***
Verify Page Loaded
    WAIT UNTIL PAGE CONTAINS  Echo Dot - Voice control your music, Make calls, Get news, weather & more - Black

Add Product To Cart
    click button  ${ADD_TO_CART_BUTTON}