<!--- Artikelkonfiq --->
<cfset aPfad = GetCurrentTemplatePath()>
<cfset aFile = lcase(GetFileFromPath(aPfad))>
<cfset aLink = replace(aFile, ".cfm","","ALL")>
<cfset aLink = replace(aLink, "_","","ALL")>
<cfset aDatum = left(aLink, 10)>
<cfset aDatum = lsdateformat(aDatum, "dd.mm.yyyy")>
<!--- Artikelkonfiq --->
    
<article>
		<h2><a href="blog.cfm?read=<cfoutput>#aLink#</cfoutput>">Hallo Blog</a></h2>
			<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/ZTLAx3VDX7g?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
</article>
