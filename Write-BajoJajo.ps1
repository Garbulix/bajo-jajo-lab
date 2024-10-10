<#
.SYNOPSIS
Echo "bajo jajo" to terminal output.

.PARAMETER HowManyTimesThisBajoJajoShouldBeWritten
Specify how many "bajo jajo" lines you want to have written.
#>
function Write-BajoJajo {
	param (
		[Parameter(Position=0)]
		[string]$HowManyTimesThisBajoJajoShouldBeWritten = 1
	)
	
	for ($i = 0; $i -lt $HowManyTimesThisBajoJajoShouldBeWritten; ++$i) {
		Write-Host "bajo jajo" -ForegroundColor Yellow -BackgroundColor Black
	}
}