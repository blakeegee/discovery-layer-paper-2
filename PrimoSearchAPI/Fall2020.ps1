$queryStrings = "[pathToInputFileWithPaperTitles.txt]"

#$path1 = "[pathToOutputNoFacetsFile.csv]"
#$path1 = "[pathToOutputConstrainedFile.csv]"
#$path1 = "[pathToOutputBooksOnlyFile.csv]"
$path1 = "[pathToOutputArticlesOnlyFile.csv]"

Remove-Item –path $path1

$apiKey = "[apikey]"
#$facets = "&qInclude="
#$facets = "&multiFacets=facet_rtype,exclude,reference_entrys|,|facet_rtype,exclude,newspaper_articles|,|facet_rtype,exclude,reviews"
#$facets = "&multiFacets=facet_rtype,include,pbooks|,|facet_rtype,include,books|,|facet_rtype,include,book_chapters"
$facets = "&qInclude=facet_rtype,exact,articles"

$date = "&qInclude=facet_searchcreationdate,exact,%5B1000%2BTO%2B2020%5D"

$queryList = Get-Content -Encoding UTF8 $queryStrings -ErrorAction SilentlyContinue | %{$_ -replace "\?","%3F"}
# | %{$_ -replace "\?","%3F"} | %{$_ -replace "’","'"} | %{$_ -replace "è","&#233;"} | %{$_ -replace "“","""} | %{$_ -replace "”","""}

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

foreach ($query in $queryList) {

$urlCurrent = "https://api-na.hosted.exlibrisgroup.com/primo/v1/search?vid=WSU&tab=default_tab&scope=WSU_everything&q=any,contains," + $query + $facets + $date + "&lang=eng&offset=0&limit=50&sort=rank&pcAvailability=true&getMore=0&conVoc=true&inst=WSU&apikey=$apiKey"
$resultsCurrent = Invoke-WebRequest -Uri $urlCurrent | ConvertFrom-Json
$numResultsCurrent = $resultsCurrent.info.total
$titleCurrent = $resultsCurrent.docs.pnx.display.title -join "|"
$dTypeCurrent = $resultsCurrent.docs.pnx.display.type -join "|"

if ($resultsCurrent.docs.pnx.search[0] -eq $null) {$creationDate00 = ''} else {$creationDate00 = $resultsCurrent.docs.pnx.search[0].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[1] -eq $null) {$creationDate01 = ''} else {$creationDate01 = $resultsCurrent.docs.pnx.search[1].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[2] -eq $null) {$creationDate02 = ''} else {$creationDate02 = $resultsCurrent.docs.pnx.search[2].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[3] -eq $null) {$creationDate03 = ''} else {$creationDate03 = $resultsCurrent.docs.pnx.search[3].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[4] -eq $null) {$creationDate04 = ''} else {$creationDate04 = $resultsCurrent.docs.pnx.search[4].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[5] -eq $null) {$creationDate05 = ''} else {$creationDate05 = $resultsCurrent.docs.pnx.search[5].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[6] -eq $null) {$creationDate06 = ''} else {$creationDate06 = $resultsCurrent.docs.pnx.search[6].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[7] -eq $null) {$creationDate07 = ''} else {$creationDate07 = $resultsCurrent.docs.pnx.search[7].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[8] -eq $null) {$creationDate08 = ''} else {$creationDate08 = $resultsCurrent.docs.pnx.search[8].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[9] -eq $null) {$creationDate09 = ''} else {$creationDate09 = $resultsCurrent.docs.pnx.search[9].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[10] -eq $null) {$creationDate10 = ''} else {$creationDate10 = $resultsCurrent.docs.pnx.search[10].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[11] -eq $null) {$creationDate11 = ''} else {$creationDate11 = $resultsCurrent.docs.pnx.search[11].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[12] -eq $null) {$creationDate12 = ''} else {$creationDate12 = $resultsCurrent.docs.pnx.search[12].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[13] -eq $null) {$creationDate13 = ''} else {$creationDate13 = $resultsCurrent.docs.pnx.search[13].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[14] -eq $null) {$creationDate14 = ''} else {$creationDate14 = $resultsCurrent.docs.pnx.search[14].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[15] -eq $null) {$creationDate15 = ''} else {$creationDate15 = $resultsCurrent.docs.pnx.search[15].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[16] -eq $null) {$creationDate16 = ''} else {$creationDate16 = $resultsCurrent.docs.pnx.search[16].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[17] -eq $null) {$creationDate17 = ''} else {$creationDate17 = $resultsCurrent.docs.pnx.search[17].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[18] -eq $null) {$creationDate18 = ''} else {$creationDate18 = $resultsCurrent.docs.pnx.search[18].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[19] -eq $null) {$creationDate19 = ''} else {$creationDate19 = $resultsCurrent.docs.pnx.search[19].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[20] -eq $null) {$creationDate20 = ''} else {$creationDate20 = $resultsCurrent.docs.pnx.search[20].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[21] -eq $null) {$creationDate21 = ''} else {$creationDate21 = $resultsCurrent.docs.pnx.search[21].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[22] -eq $null) {$creationDate22 = ''} else {$creationDate22 = $resultsCurrent.docs.pnx.search[22].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[23] -eq $null) {$creationDate23 = ''} else {$creationDate23 = $resultsCurrent.docs.pnx.search[23].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[24] -eq $null) {$creationDate24 = ''} else {$creationDate24 = $resultsCurrent.docs.pnx.search[24].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[25] -eq $null) {$creationDate25 = ''} else {$creationDate25 = $resultsCurrent.docs.pnx.search[25].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[26] -eq $null) {$creationDate26 = ''} else {$creationDate26 = $resultsCurrent.docs.pnx.search[26].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[27] -eq $null) {$creationDate27 = ''} else {$creationDate27 = $resultsCurrent.docs.pnx.search[27].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[28] -eq $null) {$creationDate28 = ''} else {$creationDate28 = $resultsCurrent.docs.pnx.search[28].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[29] -eq $null) {$creationDate29 = ''} else {$creationDate29 = $resultsCurrent.docs.pnx.search[29].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[30] -eq $null) {$creationDate30 = ''} else {$creationDate30 = $resultsCurrent.docs.pnx.search[30].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[31] -eq $null) {$creationDate31 = ''} else {$creationDate31 = $resultsCurrent.docs.pnx.search[31].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[32] -eq $null) {$creationDate32 = ''} else {$creationDate32 = $resultsCurrent.docs.pnx.search[32].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[33] -eq $null) {$creationDate33 = ''} else {$creationDate33 = $resultsCurrent.docs.pnx.search[33].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[34] -eq $null) {$creationDate34 = ''} else {$creationDate34 = $resultsCurrent.docs.pnx.search[34].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[35] -eq $null) {$creationDate35 = ''} else {$creationDate35 = $resultsCurrent.docs.pnx.search[35].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[36] -eq $null) {$creationDate36 = ''} else {$creationDate36 = $resultsCurrent.docs.pnx.search[36].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[37] -eq $null) {$creationDate37 = ''} else {$creationDate37 = $resultsCurrent.docs.pnx.search[37].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[38] -eq $null) {$creationDate38 = ''} else {$creationDate38 = $resultsCurrent.docs.pnx.search[38].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[39] -eq $null) {$creationDate39 = ''} else {$creationDate39 = $resultsCurrent.docs.pnx.search[39].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[40] -eq $null) {$creationDate40 = ''} else {$creationDate40 = $resultsCurrent.docs.pnx.search[40].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[41] -eq $null) {$creationDate41 = ''} else {$creationDate41 = $resultsCurrent.docs.pnx.search[41].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[42] -eq $null) {$creationDate42 = ''} else {$creationDate42 = $resultsCurrent.docs.pnx.search[42].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[43] -eq $null) {$creationDate43 = ''} else {$creationDate43 = $resultsCurrent.docs.pnx.search[43].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[44] -eq $null) {$creationDate44 = ''} else {$creationDate44 = $resultsCurrent.docs.pnx.search[44].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[45] -eq $null) {$creationDate45 = ''} else {$creationDate45 = $resultsCurrent.docs.pnx.search[45].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[46] -eq $null) {$creationDate46 = ''} else {$creationDate46 = $resultsCurrent.docs.pnx.search[46].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[47] -eq $null) {$creationDate47 = ''} else {$creationDate47 = $resultsCurrent.docs.pnx.search[47].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[48] -eq $null) {$creationDate48 = ''} else {$creationDate48 = $resultsCurrent.docs.pnx.search[48].creationDate[0]}
if ($resultsCurrent.docs.pnx.search[49] -eq $null) {$creationDate49 = ''} else {$creationDate49 = $resultsCurrent.docs.pnx.search[49].creationDate[0]}

#Print All Results to File
[pscustomobject]@{

	Query = $query | %{$_ -replace "%3F","?"}
	Results = $numResultsCurrent
	Title = $titleCurrent
	Type = $dTypeCurrent
	CreateDate = $creationDate00 + "|" + $creationDate01 + "|" + $creationDate02 + "|" + $creationDate03 + "|" + $creationDate04 + "|" + $creationDate05  + "|" + $creationDate06 + "|" + $creationDate07 + "|" + $creationDate08 + "|" + $creationDate09 + "|" + $creationDate10 + "|" + $creationDate11 + "|" + $creationDate12 + "|" + $creationDate13 + "|" + $creationDate14 + "|" + $creationDate15  + "|" + $creationDate16 + "|" + $creationDate17 + "|" + $creationDate18 + "|" + $creationDate19 + "|" + $creationDate20 + "|" + $creationDate21 + "|" + $creationDate22 + "|" + $creationDate23 + "|" + $creationDate24 + "|" + $creationDate25  + "|" + $creationDate26 + "|" + $creationDate27 + "|" + $creationDate28 + "|" + $creationDate29 + "|" + $creationDate30 + "|" + $creationDate31 + "|" + $creationDate32 + "|" + $creationDate33 + "|" + $creationDate34 + "|" + $creationDate35  + "|" + $creationDate36 + "|" + $creationDate37 + "|" + $creationDate38 + "|" + $creationDate39 + "|" + $creationDate40 + "|" + $creationDate41 + "|" + $creationDate42 + "|" + $creationDate43 + "|" + $creationDate44 + "|" + $creationDate45  + "|" + $creationDate46 + "|" + $creationDate47 + "|" + $creationDate48 + "|" + $creationDate49

} 3>&1 2>&1 | Export-Csv -notype -Encoding UTF8 $path1 -Append
 
}

Write-Host "Press any key to continue ..."
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

####
#Filters the results by the facets that you want to include. The logical AND operation is applied between the facets.
#This filter uses the following format:
#qInclude=<facet_category_1>,exact,<facet_name_1>[|,|<facet_category_n>,exact,<facet_name_n>...]

#Note: Multiple categories are delimited by the following string of characters: |,|

#* facet_category - The facet category that you want to include. The following categories are valid: facet_rtype (Resources Type), facet_topic (Subject), facet_creator (Author), facet_tlevel (Availability), facet_domain (Collection), facet_library (library name), facet_lang (language), facet_lcc (LCC classification).
#* facet_name - The name of the facet to include (such as Journals if facet_rtype was selected).
