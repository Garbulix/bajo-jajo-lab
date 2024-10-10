<#
.SYNOPSIS
Create a file with unique name with "bajo jajo" string saved in it.
#>
function Out-BajoJajo {
	[string]$FileName = "bajo_" + [string]$(Get-Date -Format "yyyy-MM-dd_HHmmss") + ".txt"

	"bajo jajo" | Out-File $FileName

	Start-Sleep 1
}