(DefineLink
	(DefinedPredicate "MainLoop")
		(SatisfactionLink
			(SequentialOrLink
				(False (SequentialAndLink
					(Equal (Number 5)
						(GetLink
							(StateLink (ConceptNode "ticker")(VariableNode "$x"))))
					(EvaluationLink (GroundedPredicateNode "py: send_msg")
						(ListLink (ConceptNode "tick")))
				))
						(DefinedPredicateNode "MainLoop")
		)))
