*** Settings ***
Documentation  This script is for exploring the builtin lib
Library  SeleniumLibrary

*** Variables ***
${A_GLOBAL_VARIABLE} =  Can be accessed anywhere
${SET_GLOBAL_VARIABLE_IN_TEST}
@{LIST_VARIABLE}

*** Test Cases ***
Declaration and setting Variables
    ${a_test_variable} =  set variable  This variable is for this test only
    set test variable  ${another_way}  This is another way to set a variable

     set suite variable  ${a_suite_variable}  This is a suite variable can be accesses with in suite

    Set Global Variable  ${GLOBAL_VARIABLE}  This is a global variable
    set global variable  ${SET_GLOBAL_VARIABLE_IN_TEST}  Another way

    @{LIST_VARIABLE} =  create list  one item  2nd item  3rd item

Loggin in robotframework
    comment  ${not set variable} #This variable is not set but it will not fail
    comment  ${a_suite_variable}
    comment  Some comment to be printed

    log  what ever we want to log will appear in report
    log many  Something to say 1  Something to say 2  Something to say 3
    log to console  this statement is for console
    log variables  #logs are variable in the scope in report
    log  ${A_GLOBAL_VARIABLE}
    log  ${SET_GLOBAL_VARIABLE_IN_TEST}
    log many  @{LIST_VARIABLE}

Ignore if there is a failure example
    Open Browser  https://www.amazon.in/  ff

    run keyword and continue on failure  Wait Until Page Contains  some text which is not there
    run keyword and continue on failure  Wait Until Page Contains  some other text which is not there

    log  ${A_GLOBAL_VARIABLE}
    log  ${SET_GLOBAL_VARIABLE_IN_TEST}
    log many  @{LIST_VARIABLE}

    Close Browser

Repeat the key-word
    repeat keyword  4 times  This particular key-word

*** Keywords ***
This particular key-word
    Log  This will be logged 4 times