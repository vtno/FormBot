*** Settings ***
Resource          resource.robot

*** Test Cases ***
Open Web and Fill Form
    Open Browser To Form
    Page Should Contain          Your response was submitted
    Page Should Not Contain      Some of your changes were not saved
    [Teardown]
        Close Browser
