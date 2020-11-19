*** Settings ***
Resource          resource.robot

*** Test Cases ***
Open Web and Fill Form
    Open Browser To Form
    Wait Until Page Contains Element     class:thank-you-page-confirm
    [Teardown]
        Close Browser
