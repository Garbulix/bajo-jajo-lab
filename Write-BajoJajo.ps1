function Write-BajoJajo {
	param (
		[Parameter(Position=0)]
		[string]$HowManyTimesThisBajoJajoShouldBeWritten = 1
	)
	
	for ($i = 0; $i -lt $HowManyTimesThisBajoJajoShouldBeWritten; ++$i) {
		Write-Host "bajo jajo" -ForegroundColor Yellow -BackgroundColor Black
	}
}