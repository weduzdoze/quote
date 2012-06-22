<circuit access="public">
	<fuseaction name="start">
		<do action="mQuote.start" />
		<do action="vQuote.start" />
	</fuseaction>
	<fuseaction name="get">
		<do action="mQuote.get" />
		<do action="vQuote.get" />
	</fuseaction>	
</circuit>
