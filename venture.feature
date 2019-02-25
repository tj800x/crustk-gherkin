Feature: Create a Venture

    A venture tracks project inputs by one or more contributors.
    As inputs are logged, the theoretical value of the venture
    is increased.  When a venture reaches an "pricing event", each
    contributor receives the amount of equity corresponding to
    the relative value of their inputs.
 
    Example: The Manager creates a venture named "Spacewars"

    Scenario: A user creates a new Venture
        Given <Name> has an account on a the DLT
        And his account balance is at least <VentureTransactionCost>
        When he initates the 'Create Venture' command
        And he specifies the <VentureName>
        And the <VentureName> has not previously been used
        Then the DLT should subtract <VentureTransactionCost> from his balance
        And the new Venture should be created
        And <Name> should be given managerial rights over the venture
        
        Examples:
        | Name       | VentureTransactionCost | VentureName |
        | Marty      | 500 bytes              | Spacewars   |
		
