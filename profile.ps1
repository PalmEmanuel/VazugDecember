function Get-VazugWeather {
    $Response = Invoke-RestMethod 'https://api.open-meteo.com/v1/forecast?latitude=59.62&longitude=16.55&daily=weathercode,temperature_2m_max&timezone=Europe%2FBerlin'
    
    for ($i = 0; $i -lt $Response.daily.weathercode.Count; $i++) {
        [pscustomobject]@{
            'WeatherCode' = $Response.daily.weathercode[$i]
            'Time' = $Response.daily.time[$i]
            'Temperature' = $Response.daily.temperature_2m_max[$i]
        }
    }
}