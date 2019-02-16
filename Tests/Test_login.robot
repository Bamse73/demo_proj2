*** Settings ***
Resource  Resources/common.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test



*** Variables ***
${BROWSER} =  firefox
${START_URL} =  testpage.com
${EMAIL} = xxx.yyy@hotmai.com
${PASSWD} = qwerrty123ad

*** Test Cases ***
Open webpage
    Go To  ${START_URL}
    Wait Until Page Contains  xxxxxxxx
    page should contain button  Login


Login to webpage
    input text  username_field  ${EMAIL}
    input text  password_field  ${PASSWD}
    click button  Login
    title should be  welcome!!

