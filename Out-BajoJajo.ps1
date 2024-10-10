function Out-BajoJajo {
	[string]$FileName = "bajo_" + [string]$(Get-Date -Format "yyyy-MM-dd_HHmmss") + ".txt"

	"bajo jajo" | Out-File $FileName

	Start-Sleep 1
}