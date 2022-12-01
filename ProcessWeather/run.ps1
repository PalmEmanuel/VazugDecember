param($WeatherInfo)

$WeatherString = $WeatherInfo | ConvertTo-Json

$Name = $WeatherInfo[0].Time
Push-OutputBinding -Name blobBinding -Value ([System.Text.Encoding]::Utf8.GetBytes($WeatherString))