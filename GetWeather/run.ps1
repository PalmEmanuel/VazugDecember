param($vazugtimer)

$Weather = Get-VazugWeather

Push-OutputBinding -Name myQueue -Value $Weather
