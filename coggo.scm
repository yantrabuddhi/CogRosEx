(use-modules (opencog exec))

(DefineLink
	(DefinedPredicate "main loop")
		(SatisfactionLink
			(SequentialOrLink
				(False (SequentialAndLink
					(EqualLink (SetLink (Number 1))
						(GetLink
							(StateLink (ConceptNode "ticker")(VariableNode "$x"))))
					(EvaluationLink (GroundedPredicateNode "py: send_msg")
						(ListLink (ConceptNode "tick")))
				))
						(DefinedPredicateNode "main loop")
		)))

(cog-evaluate! (DefinedPredicateNode "main loop"))
