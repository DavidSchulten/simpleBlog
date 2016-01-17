<!--- Artikelkonfiq --->
<cfset aPfad = GetCurrentTemplatePath()>
<cfset aFile = lcase(GetFileFromPath(aPfad))>
<cfset aLink = replace(aFile, ".cfm","","ALL")>
<cfset aLink = replace(aLink, "_","","ALL")>
<cfset aDatum = left(aLink, 10)>
<cfset aDatum = lsdateformat(aDatum, "dd.mm.yyyy")>
<!--- Artikelkonfiq --->
<article>
	<h2><a href="./?read=<cfoutput>#aLink#</cfoutput>">Dritter Eintrag</a></h2>
	<p><small><cfoutput>#adatum#</cfoutput></small></p>
	<p>
		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, quam, cum, voluptates officiis non sed eum placeat earum similique modi a mollitia amet velit? Ex tempore asperiores dignissimos est blanditiis!	
	</p>
	<cfif StructKeyExists(url,"read") is true>
	<p>
		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore, iusto, quidem inventore earum fugiat optio voluptatem officia praesentium accusamus esse a ullam fugit assumenda modi nemo facilis blanditiis quasi reiciendis! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex, nam architecto quae sunt possimus alias sint est laborum repudiandae minima quidem ipsum ab esse excepturi vero accusantium id ut unde! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam, repudiandae, animi, optio, voluptate iure accusantium obcaecati ex eius voluptates eveniet modi reiciendis ratione quaerat ipsum praesentium saepe ducimus eaque. Facere!		
	</p>
	</cfif>
</article>
