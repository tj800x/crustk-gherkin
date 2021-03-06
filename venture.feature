Feature: Create a Venture

    A venture tracks project inputs by one or more contributors.
    As inputs are logged, the theoretical value of the venture
    is increased, until a pricing event occurs.
 
    Example: The Manager creates a venture named "Spacewars"
        with a Cash Multiplier of 4.0 and a Non-Cash Multiplier of 2.0

    Scenario: A user creates a new Venture
        Given <Name> has an account on a the DLT
        And his account balance is sufficient
        When he initates the 'Create Venture' command
        And he specifies the <VentureName>
	And he specifies the <CashMultipler>
	And he specifies the <NonCashMultiplier>
        And the <VentureName> has not previously been used
        Then the new Venture should be created
        And <Name> should be given managerial rights over the venture
	And the CashMultipler property should be set to <CashMultiplier>
	And the NonCashMultipler property should be set to <NonCashMultiplier>
        
        Examples:
        | Name     | VentureName   | CashMultiplier | NonCashMultiplier |
        | Marty    | Spacewars     | 4.0            | 2.0               |
