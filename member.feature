Feature: Members

    A member is a contributor to the Venture.  Members may have rates
    which corresponds to an agreed-on market value for their hourly time.
    Members log their Inputs to the Venture on a periodic basis.
    
    Example: The Manager creates a member "John" for the venture
             named "Spacewars"

    Scenario: A manager creates a new Member
        Given <ManagerName> is a manager for the <VentureName> venture
        When he initates the 'Create Member' command
        And he specifies the <MemberName>
        And he specifies the <MemberRate>
        And there is not already a member by that name
        Then a new member should be created
        And the new member should be associated with the Venture
        And the Name property should be <MemberName>
        And the Rate property should be <MemberRate>
        
        Examples:
        | ManagerName | VentureName   | MemberName | MemberRate |
        | Marty       | Spacewars     | John       | 20.00      |
        | Marty       | Spacewars     | Sally      | 30.00      |
	
		
