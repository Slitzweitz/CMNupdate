$list = Get-ChildItem "c:\test\*.*" -Include *.doc*
foreach($item in $list){
$objDoc = $objWord.Documents.Open($item.FullName,$true)
$objSelection = $objWord.Selection 
$wdFindContinue = 1
$FindText = “Rev 005" 
$MatchCase = $False 
$MatchWholeWord = $true
$MatchWildcards = $False 
$MatchSoundsLike = $False 
$MatchAllWordForms = $False 
$Forward = $True 
$Wrap = $wdFindContinue 
$Format = $False 
$wdReplaceNone = 0 
$ReplaceWith = "Rev 006" 
$wdFindContinue = 1 
$ReplaceAll = 2

$a = $objSelection.Find.Execute($FindText,$MatchCase,$MatchWholeWord,$MatchWildcards,$MatchSoundsLike,$MatchAllWordForms,$Forward,$Wrap,$Format,$ReplaceWith,$ReplaceAll) 
$objDoc.Save()
$objDoc.Close()
}
$objWord.Quit()
