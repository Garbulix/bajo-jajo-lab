function Read-BajoJajo {
	[string]$UserInput = Read-Host "Put your input"
	
	if ($UserInput -ceq "bajo jajo") {
		Write-Host "Yes, this is 'bajo jajo'" -BackgroundColor Black -ForegroundColor Green
	} else {
		Write-Host "No, this is not 'bajo jajo'" -BackgroundColor Black -ForegroundColor Red
	}
}