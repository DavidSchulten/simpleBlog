<!--- Define folder for blog.cfm --->
<cfset myDir = expandpath("/")>
<cfset myPfad = "#myDir#/artikel">
<cfif parameterexists(read) is "false">
<cfdirectory action="list" name="artikel" directory="#myPfad#" sort="name desc">
<cfloop query="artikel">
	<cfif left(name, 1) neq "." and left(name,1) neq "_">
		<cfinclude template="artikel/#name#">
	</cfif>
</cfloop>
<cfelse>
	<cfinclude template="artikel/#read#.cfm">
</cfif>

