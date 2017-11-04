*** Settings ***
Documentation		RobotFrameworkDemo tests
Library			RobotFramework.py
Test Setup       	Start Robot	A
Test Teardown    	Stop Robot


*** Variables ***
${SETUP}		Start Robot
${TEARDOWN}		Stop Robot
@{ACTIONS}		Do Something	Do Somethig Else

*** Test Cases ***
Default values
    [Documentation]    Setup and teardown from setting table
    Do Something	Like Eating

Overridden setup
    [Documentation]    Own setup, teardown from setting table
    [Setup]    		Start Robot	B	
    Do Something	Like Reading

No teardown
    [Documentation]    Default setup, no teardown at all
    Do Something	Like Writing
    [Teardown]

No teardown 2
    [Documentation]    Setup and teardown can be disabled also with special value NONE
    Do Something	Like Driving
    [Teardown]    NONE

Using variables
    [Documentation]    Setup and teardown specified using variables
    [Setup]    ${SETUP}		C
    Do Something	Like Studing
    [Teardown]    ${TEARDOWN}

Template and for
    [Template]    Do Many Things
    :FOR    ${action}    IN    @{ACTIONS}
    \    ${action}	Like Thinking
    :FOR    ${index}    IN RANGE    42
    \    Do Something	Like Counting ${index} Times


*** Keywords ***
Do Many Things
	[Arguments]	${arg1}		${arg2}
	Do Something	${arg1} and ${arg2}
