Project analyzing Twitch streaming statistics.  

The aim of this project is to analyze a large dataset from the year 2015 of views on twitch. We will try to look at the most viewed games, location statistics and viewership distribution during the day.

In this project I use SQL to querry some statistics that I will later use in python to create some graphs with Matplotlib.

DATASETS USED IN THIS PROJECT:

- [x] [`stream.csv`](stream.csv)--Too big to be upload to Github
- [x] [`chat.csv`](chat.csv)  

The `stream.csv` has the following fields:

Headers | Description |
--- | --- |
`time` | date and time (YYYY-MM-DD HH:MM:SS)
`device_id` | device ID
`login` | login ID
`channel` | streamer name
`country` | country name abbreviation
`player` | streamed device
`game` | game name
`stream_format` | stream quality
`subscriber` | is the viewer a subscriber? (true/false)

The `chat.csv` has the following fields:

Headers | Description |
--- | --- |
`time` | date and time (YYYY-MM-DD HH:MM:SS)
`device_id` | device ID
`login` | login ID
`channel` | streamer name
`country` | country name abbreviation
`player` | chat device
`game` | game name


