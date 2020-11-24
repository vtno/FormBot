*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}      http://172.25.192.1:8080/
${BROWSER}  headlessfirefox

*** Keywords ***
Open Browser To Form
    Open Browser                 ${URL}                       ${BROWSER}
    Maximize Browser Window
    Click Button                 Next
    Execute JavaScript           document.querySelector('button[title="Date picker"]').click()
    # Select current date
    Execute JavaScript           document.querySelector('.picker__day--highlighted').click()
    # Select a specific day from the calendar: current example is 14/11/2020
    # Execute JavaScript           document.querySelectorAll('[data-pick="1605286800000"]')[0].click()
    Execute JavaScript           document.querySelectorAll('input[type="radio"]')[0].click()    
    Execute JavaScript           document.querySelectorAll('input[type="radio"]')[3].click()    
    Execute JavaScript           document.querySelector('#Select_0_placeholder').click()    
    Execute JavaScript           document.querySelectorAll('.select-option-nocheck')[71].click()
    Execute JavaScript           document.querySelector('#Select_1_placeholder').click()   
    Execute JavaScript           document.querySelectorAll('.select-option-nocheck')[2].click()
    Execute JavaScript           document.querySelector('#Select_2').click()
    Execute JavaScript           document.querySelectorAll('.select-option-nocheck')[4].click()
    Click Button                 Next
    Execute JavaScript           document.querySelectorAll('input[type="radio"]')[1].click()    
    Click Button                 Next
    Execute JavaScript           document.querySelectorAll('input[type="radio"]')[0].click()    
    Click Button                 Next
    Execute JavaScript           document.querySelectorAll('input[type="radio"]')[0].click()    
    Click Button                 Submit
