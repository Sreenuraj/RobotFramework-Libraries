*** Settings ***
Library  SeleniumLibrary
Resource  /Sreenu/Robort-Framework/RobotFramework-Libraries/Resources/Web/PageObjects/LandingPage.robot
Resource  /Sreenu/Robort-Framework/RobotFramework-Libraries/Resources/Web/PageObjects/TopNavBar.robot
Resource  /Sreenu/Robort-Framework/RobotFramework-Libraries/Resources/Web/PageObjects/SearchResult.robot
Resource  /Sreenu/Robort-Framework/RobotFramework-Libraries/Resources/Web/PageObjects/ProductActions.robot
Resource  /Sreenu/Robort-Framework/RobotFramework-Libraries/Resources/Web/PageObjects/CartActions.robot
Resource  /Sreenu/Robort-Framework/RobotFramework-Libraries/Resources/Web/PageObjects/SignInPage.robot

*** Keywords ***

Go to the url
    LandingPage.Load
    LandingPage.Verify Page Load

Search for a product
    TopNavBar.Searching The Product
    SearchResult.Click Product Link
    ProductActions.Verify Page Loaded

Add product to cart
    ProductActions.Add Product To Cart
    CartActions.Verify Product Added

Proceed to checkout
    CartActions.Proceed To Checkout

Verify the Sign in screen
    SignInPage.Verify Page Loaded
