@login @nr
Feature: Employee login

  @fea002
  Scenario: Registered employee login success
    Given Adrian is a registered employee
    When Adrian connects to TruskX
    Then Adrian is redirected to posts list

  @fea002
  Scenario: Registered employee login with bad password failure
    Given Adrian is a registered employee
    When Adrian connects to TruskX with a bad password
    Then Adrian is not redirected to posts list
    And Adrian is still on login
    And Adrian is warned that his password is not correct

  @fea002
  Scenario: Registered employee login with invalid email failure
    Given Adrian is a registered employee
    When Adrian connects to TruskX with an invalid email
    Then Adrian is not redirected to posts list
    And Adrian is still on login
    And Adrian is warned that his email is invalid

  @fea002
  Scenario: Unregistered employee login failure
    Given Adrian is not a registered employee
    When Adrian connects to TruskX
    Then Adrian is not redirected to posts list
    And Adrian is still on login
    And Adrian is warned that he is not registered

  @fea002
  Scenario: Employee login without email failure
    Given Adrian is a registered employee
    When Adrian connects to TruskX without email
    Then Adrian is not redirected to posts list
    And Adrian is still on login
    And Adrian is warned that an email is required

  @fea002
  Scenario: Employee login without password failure
    Given Adrian is a registered employee
    When Adrian connects to TruskX without password
    Then Adrian is not redirected to posts list
    And Adrian is still on login
    And Adrian is warned that a password is required

  @fea002
  Scenario: From login employees could go to signup
    When Someone is on login
    And Someone clicks on signup button
    Then Someone is redirected to signup