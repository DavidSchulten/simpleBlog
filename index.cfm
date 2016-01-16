<!--- Define folder for blog.cfm --->
<cfset myDir = GetCurrentTemplatePath()>
<cfset myDir = GetDirectoryFromPath(myDir)>
<cfset myFolder = "#myDir#/artikel">
<!DOCTYPE HTML>
<html lang="de">
<head>
<meta charset="utf-8" />
		<title>simpleBlog</title>
<style>
body {
	font-family: sans-serif;
}
h1,
article {
	max-width: 980px;
	margin: 1em auto;
}
</style>
</head>
<body>
	<h1>simpleBlog</h1>
<cfif parameterexists(read) is "false">
<cfdirectory action="list" name="artikel" directory="#myFolder#" sort="name desc" filter="*.cfm">
<cfloop query="artikel">
	<cfif left(name, 1) neq "." and left(name,1) neq "_">
		<cfinclude template="artikel/#name#">
	</cfif>
</cfloop>
<cfelse>
	<cfinclude template="artikel/#read#.cfm">
</cfif>
</body>
</html>

