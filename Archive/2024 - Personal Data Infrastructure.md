The following file details the various processes that I regularly undergo to complete particular tasks or routines. These might include completing tasks, saving events, reading books, etc.

# Process Map

## 2024

```mermaid
graph LR
	
	%% Entities 
	classDef valLow fill:#ff8566
	classDef valMed fill:#fc6
	classDef valHigh fill:#9f9
	classDef val fill:gray
	github{{GitHub}}:::valHigh
	googlecalendar{{Google Calendar}}:::valMed
	googlemail{{Google Mail}}:::valHigh
	googlemaps{{Google Maps}}:::valMed
	googlephotos{{Google Photos}}:::valHigh
	googlesheets{{Google Sheets}}:::valMed
	obsidian{{Obsidian}}:::valHigh
	1pass{{1Password}}:::valHigh
	monzo{{Monzo}}:::valHigh
	notion{{Notion}}:::valMed
	spotify{{Spotify}}:::valHigh
	youtube{{YouTube}}:::valMed
	linode{{Linode}}:::valHigh
	clearhabits{{Clear Habits}}:::valHigh
	dash{{Dashboards}}:::valMed
	garminConnect{{Garmin Connect}}:::valMed
	strava{{Strava}}:::valMed
	icloud{{iCloud}}:::valMed
	leaf{{Leaf.co}}:::valMed
	readwise{{Readwise Reader}}:::valHigh
	
	%% Repos
	journal[/journal/]
	secondBrain[/second-brain/]
	
	%% Devices
	boox[[BOOX eReader]]
	kindle[[Kindle eReader]]
	iphone[[iPhone]]
	nokia[[Nokia Dumb Phone]]
	laptop[[Laptop]]
	worklaptop[[Work Laptop]]
	garmin[[Garmin]]

	%% Inputs
	classDef input fill:#9cf
	bookRec([fa:fa-book Book Recommendation]):::input
	interestingArticle([fa:fa-book Interesting Article]):::input
	event([fa:fa-calendar Event]):::input
	locationRec([fa:fa-map-marker Location Recommendation]):::input
	moment([fa:fa-camera Remember Moment]):::input
	objective([fa:fa-check Objective / Task]):::input
	purchase([fa:fa-gbp Purchase]):::input
	songRec([fa:fa-music Song Recommendation]):::input
	videoRec([fa:fa-link YouTube URL]):::input
	importantInfo([fa:fa-pencil Important Information]):::input
	project([fa:fa-code Dev Project]):::input
	password([fa:fa-key Password]):::input
	xbox([fa:fa-gamepad Xbox]):::input
	cycle([Cycling]):::input

	%% Flows
	bookRec .-> |Add Book| notion
	interestingArticle .-> |Save Article| readwise --> |Sync| boox
	event .-> |Event Idea| notion
	event .-> |Scheduled Event| googlecalendar
	notion .-> |Buy Book| boox
	googlephotos .-> |Write Entry| obsidian
	googlemail .-> |Requires Action| clearhabits
	locationRec .-> |Add to Want to Go| googlemaps
	moment .-> |Write Entry| obsidian .-> |Git Sync| journal
	obsidian .-> |Git Sync| secondBrain
	moment .-> |Take Photo| iphone
	iphone --> |Sync| googlephotos
	iphone --> |Sync| icloud
	laptop --> |Sync| icloud
	worklaptop --> |Sync| icloud
	purchase --> |Payment| monzo .-> |Sync| dash
	songRec .-> |Like Song| spotify
	videoRec .-> |Paste Link| notion .-> |Watch Later| youtube
	importantInfo .-> |Write| notion
	project .-> |Develop Idea| github .-> |Deploy| linode
	googlephotos .-> |Back Up| laptop
	password .-> |Save Password| 1pass
	objective .-> |Schedule Task| clearhabits
	xbox .-> |Play Halo| leaf .-> |Sync| dash
	cycle .-> |Track Route| garmin .-> |Sync| garminConnect .-> |Sync| strava
```

- Replace LastPass with OnePassword
- Replace Google Pixel 2 with iPhone 13 Mini
- Stopped using Obsidian Publish
- Removed oracle repo
- No longer using goPro

## 2022

```mermaid
graph LR
	
	%% Entities 
	classDef valLow fill:#ff8566
	classDef valMed fill:#fc6
	classDef valHigh fill:#9f9
	classDef val fill:gray
	fcd{{Flashcards Deluxe}}:::valLow
	github{{GitHub}}:::valHigh
	googlecalendar{{Google Calendar}}:::valMed
	googlemail{{Google Mail}}:::valHigh
	googlemaps{{Google Maps}}:::valMed
	googlephotos{{Google Photos}}:::valHigh
	googlesheets{{Google Sheets}}:::valMed
	obsidian{{Obsidian}}:::valHigh
	obsidianPublish{{Obsidian Publish}}:::valLow
	lastpass{{LastPass}}:::valHigh
	monzo{{Monzo}}:::valHigh
	notion{{Notion}}:::valMed
	spotify{{Spotify}}:::valHigh
	youtube{{YouTube}}:::valMed
	linode{{Linode}}:::valHigh
	clearhabits{{Clear Habits}}:::valHigh
	dash{{Plotly Dash}}:::valMed
	oracle{{Oracle}}:::valMed
	garminConnect{{Garmin Connect}}:::valMed
	strava{{Strava}}:::valMed
	
	%% Repos
	journal[/journal/]
	secondBrain[/second-brain/]

	%% Devices
	kobo[[Kobo]]
	pixel[[Pixel Phone]]
	gopro[[GoPro]]
	laptop[[Laptop]]
	garmin[[Garmin]]

	%% Inputs
	classDef input fill:#9cf
	bookRec([fa:fa-book Book Recommendation]):::input
	event([fa:fa-calendar Event]):::input
	locationRec([fa:fa-map-marker Location Recommendation]):::input
	moment([fa:fa-camera Remember Moment]):::input
	objective([fa:fa-check Objective / Task]):::input
	purchase([fa:fa-gbp Purchase]):::input
	songRec([fa:fa-music Song Recommendation]):::input
	videoRec([fa:fa-link YouTube URL]):::input
	importantInfo([fa:fa-pencil Important Information]):::input
	project([fa:fa-code Dev Project]):::input
	password([fa:fa-key Password]):::input
	xbox([fa:fa-gamepad Xbox]):::input
	cycle([Cycling]):::input

	%% Flows
	bookRec .-> |Add Book| notion
	event .-> |Event Idea| notion
	event .-> |Scheduled Event| googlecalendar
	notion .-> |Buy Book| kobo
	googlephotos .-> |Write Entry| obsidian
	googlemail .-> |Requires Action| clearhabits
	locationRec .-> |Add to Want to Go| googlemaps
	moment --> |Record Video| gopro .-> |Back Up| laptop
	moment .-> |Write Entry| obsidian .-> |Git Sync| journal
	obsidian .-> |Git Sync| secondBrain
	moment .-> |Take Photo| pixel
	notion --> |Save Article| kobo
	pixel --> |Sync| googlephotos
	pixel .-> |Usage Stats| googlesheets
	purchase --> |Payment| monzo .-> |Export| dash
	songRec .-> |Like Song| spotify
	videoRec .-> |Paste Link| notion .-> |Watch Later| youtube
	importantInfo .-> |Write| notion
	notion .-> |Write Flashcards| fcd
	project .-> |Develop Idea| github .-> |Deploy| linode
	googlephotos .-> |Back Up| laptop
	password .-> |Save Password| lastpass
	objective .-> |Schedule Task| clearhabits
	xbox .-> |Play Halo| oracle
	cycle .-> |Track Route| garmin .-> |Sync| garminConnect .-> |Sync| strava
	obsidian .-> |Publish| obsidianPublish
```

### Changes

- Replaced Journey with Obsidian
- Kicked off Oracle app

## 2021

```mermaid
graph LR
	
	%% Entities 
	classDef valLow fill:#ff8566
	classDef valMed fill:#fc6
	classDef valHigh fill:#9f9
	classDef val fill:gray
	fcd{{Flashcards Deluxe}}:::valLow
	github{{GitHub}}:::valHigh
	googlecalendar{{Google Calendar}}:::valMed
	googlemail{{Google Mail}}:::valHigh
	googlemaps{{Google Maps}}:::valMed
	googlephotos{{Google Photos}}:::valHigh
	googlesheets{{Google Sheets}}:::valMed
	journey{{Journey}}:::valLow
	lastpass{{LastPass}}:::valHigh
	monzo{{Monzo}}:::valHigh
	notion{{Notion}}:::valMed
	spotify{{Spotify}}:::valHigh
	youtube{{YouTube}}:::valMed
	linode{{Linode}}:::valHigh
	clearhabits{{Clear Habits}}:::valHigh
	dash{{Plotly Dash}}:::valMed
	newsblur{{News Blur}}:::valHigh
	pocket{{Pocket}}:::valLow

	%% Devices
	kobo[[Kobo]]
	pixel[[Pixel Phone]]
	gopro[[GoPro]]
	laptop[[Laptop]]

	%% Inputs
	classDef input fill:#9cf
	bookRec([fa:fa-book Book Recommendation]):::input
	event([fa:fa-calendar Event]):::input
	locationRec([fa:fa-map-marker Location Recommendation]):::input
	moment([fa:fa-camera Remember Moment]):::input
	objective([fa:fa-check Objective / Task]):::input
	purchase([fa:fa-gbp Purchase]):::input
	songRec([fa:fa-music Song Recommendation]):::input
	videoRec([fa:fa-link YouTube URL]):::input
	importantInfo([fa:fa-pencil Important Information]):::input
	project([fa:fa-code Dev Project]):::input
	password([fa:fa-key Password]):::input
	rss([RSS]):::input

	%% Flows
	bookRec .-> |Add Book| notion
	event .-> |Event Idea| notion
	event .-> |Scheduled Event| googlecalendar
	notion .-> |Buy Book| kobo
	googlephotos .-> |Write Entry| journey
	googlemail .-> |Requires Action| clearhabits
	locationRec .-> |Add to Want to Go| googlemaps
	moment --> |Record Video| gopro .-> |Back Up| laptop
	moment .-> |Write Entry| journey
	moment .-> |Take Photo| pixel
	notion --> |Save Article| kobo
	pixel --> |Sync| googlephotos
	pixel .-> |Usage Stats| googlesheets
	purchase --> |Payment| monzo .-> |Export| dash
	songRec .-> |Like Song| spotify
	videoRec .-> |Paste Link| notion .-> |Watch Later| youtube
	importantInfo .-> |Write| notion
	notion .-> |Write Flashcards| fcd
	project .-> |Develop Idea| github .-> |Deploy| linode
	googlephotos .-> |Back Up| laptop
	password .-> |Save Password| lastpass
	objective .-> |Schedule Task| clearhabits
	rss .-> |RSS Feed| newsblur
	newsblur .-> |Saved Article| pocket
	pocket .-> |Sync| kobo
```

### Changes

- Use pocket to sync to Kobo

## 2020

```mermaid
graph LR
	
	%% Entities 
	classDef valLow fill:#ff8566
	classDef valMed fill:#fc6
	classDef valHigh fill:#9f9
	classDef val fill:gray
	fcd{{Flashcards Deluxe}}:::valLow
	github{{GitHub}}:::valHigh
	goodreads{{Goodreads}}:::valMed
	googlecalendar{{Google Calendar}}:::valMed
	googlemail{{Google Mail}}:::valHigh
	googlemaps{{Google Maps}}:::valMed
	googlephotos{{Google Photos}}:::valHigh
	googlesheets{{Google Sheets}}:::valMed
	hourstack{{Hour Stack}}:::valMed
	ifttt{{IFTTT}}:::valLow
	journey{{Journey}}:::valMed
	lastpass{{LastPass}}:::valHigh
	monzo{{Monzo}}:::valHigh
	notion{{Notion}}:::valMed
	spotify{{Spotify}}:::valHigh
	todoist{{Todoist}}:::valMed
	youtube{{YouTube}}:::valHigh
	linode{{Linode}}:::valMed

	%% Devices
	kobo[[Kobo]]
	pixel[[Pixel Phone]]
	gopro[[GoPro]]
	laptop[[Laptop]]

	%% Inputs
	classDef input fill:#9cf
	bookRec([fa:fa-book Book Recommendation]):::input
	event([fa:fa-calendar Event]):::input
	locationRec([fa:fa-map-marker Location Recommendation]):::input
	moment([fa:fa-camera Remember Moment]):::input
	objective([fa:fa-check Objective / Task]):::input
	purchase([fa:fa-gbp Purchase]):::input
	songRec([fa:fa-music Song Recommendation]):::input
	videoRec([fa:fa-link YouTube URL]):::input
	importantInfo([fa:fa-pencil Important Information]):::input
	project([fa:fa-code Dev Project]):::input
	password([fa:fa-key Password]):::input

	%% Flows
	bookRec .-> |Add Book| goodreads
	event .-> |Event Idea| notion
	event .-> |Scheduled Event| googlecalendar
	goodreads .-> |Buy Book| kobo
	googlephotos .-> |Write Entry| journey
	hourstack .-> |Export Stats| googlesheets
	locationRec .-> |Add to Want to Go| googlemaps
	moment --> |Record Video| gopro .-> |Back Up| laptop
	moment .-> |Write Entry| journey
	moment .-> |Take Photo| pixel
	notion --> |Save Article| kobo
	objective .-> |Add Task| todoist
	pixel --> |Sync| googlephotos
	pixel .-> |Usage Stats| googlesheets
	purchase --> |Payment| monzo --> |Integration| moneydashboard
	songRec .-> |Like Song| spotify
	todoist --> |Complete Task| ifttt --> |Complete Task| googlesheets
	videoRec .-> |Paste Link| notion .-> |Watch Later| youtube
	importantInfo .-> |Write| notion
	notion .-> |Write Flashcards| fcd
	googlemail .-> |Requires Action| todoist
	project .-> |Develop Idea| github .-> |Deploy| linode
	googlephotos .-> |Back Up| laptop
	password .-> |Save Password| lastpass
	objective .-> |Schedule Task| hourstack
```

# Resources

## Inspiration

- [beepB00p - Map of My Personal Data Infrastructure](https://beepb00p.xyz/myinfra.html)
- [Vital Signs](https://www.denizcemonduygu.com/portfolio/vital-signs/) - Data Visualisation of tracked information in a printable/poster format
- [Stephen Wolfram - The Personal Analytics of My Life](https://writings.stephenwolfram.com/2012/03/the-personal-analytics-of-my-life/) ([discussion](https://news.ycombinator.com/item?id=3680283))
- [beeminder](https://www.beeminder.com)
- https://twitter.com/balajis/status/1442865840882212873

## Tools

[Datasette - An open source multi-tool for exploring and publishing data](https://github.com/simonw/datasette) ([FOSDEM Demo](https://www.notion.so/oliveryh/Datasette-Demo-FOSDEM-0523ec3bc2714361b8edb07605fc00d0))
[Dogsheep: Personal analytics with Datasette](https://datasette.substack.com/p/dogsheep-personal-analytics-with?utm_source=pocket_mylist)