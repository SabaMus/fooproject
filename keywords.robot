<<<<<<< HEAD
*** Settings ***
Library         SeleniumLibrary
*** Variables ***
${BROWSER} =     chrome
${URL} =      http://rental5.infotiv.net

*** Keywords ***
Begin Web Test
    Open Browser        about:blank chrome

Go to Web Page
    Load Page
    Verify Page Loaded
Load Page
        Go to                http://rental5.infotiv.net
Verify Page Loaded
       Wait Until Page Contains                Infotiv Car Rental
create a user account
   Click element                            //*[@id="createUser"]

input dates for the trip
    Input Text                    //*[@id="start"]     When do you want to make your trip?
    Click Button                  //*[@id="start"]
    Click Button                  //*[@id="end"]

Enter Search Term
    Click Button                    //*[@id="continue"]
    Click Button                    //*[@id="bookQ7pass5"]

reset button
  click element                   //*[@id="continue"]

End Web Test
    Close Browser

browser is opend to select date
    Go to Web Page
    Element Should Be Visible     //*[@id="questionText"]

press the selected date
     Click Element                //*[@id="start"]
     Click Element               //*[@id="start"]

press"Continue"to should reserve a car
    Click Button                 //*[@id="continue"]
=======

>>>>>>> 2bf0cab285a65e3d22d51e7ce20024cb0c2b6733
