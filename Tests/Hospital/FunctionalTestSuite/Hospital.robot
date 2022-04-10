*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}      http://127.0.0.1:5000

*** Test Cases ***
1:Admin Login Test
    [Documentation]  This test is for admin login
    [Tags]  admin
    Open Browser  ${web_url}  chrome
    sleep  1s
    Test Add admname
    Test Add Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    Close Browser

2:Add Patient test
    [Documentation]  This test is to add a patient
    [Tags]  admin
    Open Browser    ${web_url}   chrome
    sleep  2s
    Test Add admname
    Test Add Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    Test Pop Name
    sleep  1s
    Test Pop MobileNumber
    sleep  1s
    Test Pop Age
    sleep  1s
    Test Pop Address
    sleep  1s
    Test Pop DOB
    sleep  1s
    Test Pop Place
    sleep  1s
    Test Pop Pincode
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  2s
    close Browser


3.View All Patients test
    [Documentation]  This test is to add a patient
    [Tags]  admin
    Open Browser    ${web_url}   chrome
    sleep  2s
    Test Add admname
    Test Add Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/nav[2]/div/div/ul/li[2]/a
    sleep  2s
    close browser

4.Search for Patient test
    [Documentation]  This test is to search a patient
    [Tags]  admin
    Open Browser    ${web_url}   chrome
    sleep  2s
    Test Add admname
    Test Add Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/nav[2]/div/div/ul/li[3]/a
    sleep  2s
    Test Pop MobileNumber
    sleep  1s
    click Button   xpath=//html/body/div[2]/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s
    close browser

5.Edit Patient Details test
    [Documentation]  This test is to edit  patient details
    [Tags]  admin
    Open Browser    ${web_url}   chrome
    sleep  2s
    Test Add admname
    Test Add Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/nav[2]/div/div/ul/li[4]/a
    sleep  2s
    Test Pop MobileNumber
    sleep  1s
    click Button   xpath=//html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s
    Test Scout Name
    sleep  1s
    Test Scout MobileNumber
    sleep  1s
    Test Scout Age
    sleep  1s
    Test Scout Address
    sleep  1s
    Test Scout DOB
    sleep  1s
    Test Scout Place
    sleep  1s
    Test Scout Pincode
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  2s
    close browser

6. Delete Patient Test
    [Documentation]  This test is to delete a patient
    [Tags]  admin
    Open Browser    ${web_url}   chrome
    sleep  2s
    Test Add admname
    Test Add Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/nav[2]/div/div/ul/li[5]/a
    sleep  2s
    Test Pop MobileNumber
    sleep  1s
    click Button   xpath=//html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s
    close browser










*** Keywords ***
Test Add admname
    Input Text  name:username  admin

Test Add Admpass
    Input Text  name:password  12345

Test Pop Name
    Input Text  name:name  navakanth

Test Pop MobileNumber
    Input Text  name:mobnumber  7539996448

Test Pop Age
    Input Text  name:age   21

Test Pop Address
    Input Text  name:address  kadapa

Test Pop Dob
    Input Text  name:dob   10/06/2000

Test Pop Place
    Input Text  name:place  AndhraPradesh

Test Pop Pincode
    Input Text  name:pincode    516227

Test Scout Name
    Input Text  name:name  harsha

Test Scout MobileNumber
    Input Text  name:mobnumber  9381294949

Test Scout Age
    Input Text  name:age   21

Test Scout Address
    Input Text  name:address  nellore

Test Scout Dob
    Input Text  name:dob   21/03/2000

Test Scout Place
    Input Text  name:place  AndhraPradesh

Test Scout Pincode
    Input Text  name:pincode    516501