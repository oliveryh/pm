---

---

## General Thoughts

Normally I get quite easily distracted and drop my plans to work on something. With planning the week in full ahead of time, and only keeping actionable and scoped items in ClearHabits, I felt like I was making a lot more progress and was more relaxed. The general improvements I’d like to change
- Easily add ebook reading that isn’t associated with a book. Add to ClearHabits manually starting in 2022
- Not much exercise over the weekend. Probably good to have something planned here
- Retrospective time isn’t currently scheduled
- Slowly automatically track screen time. Or at least start with phone as this is common goal

## Next Sprint Focus

- Setup Reddit RR in GymRun and examine export

## Keep Doing

- Staying focused on one tech project until completion has helped me a lot

## Could Improve

- Water consumption is still pretty low which is impacting my general health
- Played quite a lot of Halo this sprint
- Call Diana more often

# 21W04

## Time Commitments

> [!note]+ Expand to see times for Week
>
> ```markup
> project        | total_time 
> ----------------------+------------
>  GENUS                |      15.81
>  Obsidian Plugins     |       4.52
>  Apply to University  |       3.40
>  Cycling              |       3.17
>  Reading              |       2.66
>  Oliver R             |       1.50
>  MIAC Working Group   |       1.50
>  Oliver N             |       1.50
>  Line Manager         |       0.92
>  Diet                 |       0.79
>  Alex C               |       0.67
>  Assets               |       0.66
>  Dwelling             |       0.66
>  C&D                  |       0.58
>  RAGE                 |       0.58
>  Chloe C-K            |       0.58
>  MIAC                 |       0.50
>  Appearance           |       0.50
>  Retrospection        |       0.33
>  Mark Y-H             |       0.33
>  Monica Y-H           |       0.33
>  Personal Development |       0.25
>  GERD                 |       0.20
>  Diana Y-H            |       0.02
> ```
> ![[Untitled 13.png]]

## Reflection

### Positives

- Release v0.2.0 of Obsidian Emoji Toolbar
- Cycled 35km - Average speed was reasonable but could be improved if I find a route with fewer side streets and pedestrians
- GENUS project appears to have some end in sight
- Played XBOX with Rigby and Nicholls

### Negatives

- Vegged out big time towards the end of the week
- Nervous about interviews
- Non GENUS projects are piling up

# 21W03

## Time Commitments

> [!note]+ Expand to see times for Week
>
> ```javascript
> project         | total_time 
> ------------------------+------------
>  GENUS                  |      18.78
>  Assets                 |       6.60
>  Apply to University    |       4.04
>  Dwelling               |       3.81
>  MIAC Working Group     |       3.51
>  ClearHabits App        |       2.94
>  Reading                |       2.49
>  Sustainability Network |       2.10
>  Second Brain           |       2.08
>  Cycling                |       1.92
>  Chloe C-K              |       1.50
>  DAIS                   |       1.00
>  C&D                    |       0.92
>  Mobility               |       0.75
>  Personal Development   |       0.64
>  Cooking                |       0.50
>  Fleur Y-H              |       0.50
>  Ancillary              |       0.50
>  RAGE                   |       0.43
>  Digital                |       0.38
>  Appearance             |       0.33
>  Outgoings              |       0.29
> ```
> ![[Untitled 14.png]]

## Reflection

### Positives

- Had a productive weekend
- Cycled 3 times!
- Finished reading "Chasing the Scream" book

### Negatives

- Felt quite ill with GERD probably due to drinking too much coffee/hot chocolate
- Quite bored. Placating myself quite a lot. Perhaps I should start reading another book or have flashcards at the ready

# 21W02

## Time Commitments

> [!note]+ Expand to see times for Week
>
> ```javascript
> project         | total_time 
> ------------------------+------------
>  GENUS                  |      17.62
>  ClearHabits App        |      13.34
>  MIAC Working Group     |       5.96
>  Digital                |       2.87
>  Cooking                |       2.46
>  Reading                |       2.11
>  TAs                    |       2.00
>  Chloe C-K              |       1.50
>  Sustainability Network |       1.44
>  Dwelling               |       1.37
>  Cycling                |       1.08
>  Line Manager           |       0.88
>  Retrospection          |       0.84
>  Appearance             |       0.81
>  Mark Y-H               |       0.72
>  Articles               |       0.42
>  Assets                 |       0.34
>  RAGE                   |       0.25
> ```
> ![[Untitled 15.png]]

## Reflection

### Work

- Need to have a conversation with manager about work balance for 2021
- Should make a better effort to manage NG as this is a good thing to put on the CV

### Avocation

- Enjoying developing ClearHabits app although did spend **a lot of time on it **the last few weeks
- Potentially commit time to be more balanced across other avocation things (cooking, creativity) and other categories (growth, physical)

### Physical

- **Bought a road bike!**
- Posture is particularly bad at the moment
- Cooked and ate fairly well for the week

## Improvements

- [x] Cycle to work at least 3 times a week
- [x] Diversify activities to not just include Clearhabits app development
- [x] Finish reading "Chasing the Scream" book (Aim to read 15 books this year)

# 21W01

## Time Commitments

> [!note]+ Expand to see times for Week
>
> ```javascript
> clearhabits=# SELECT t.project as project, ROUND(100*SUM(t.time)/205739, 2) as total_time FROM (SELECT MAX(projects."description") as project, MAX(tasks."description") as desc, COUNT(*) as count, SUM(entries."timerTrackedTime") as time FROM entries LEFT JOIN tasks ON entries."taskId" = tasks."id" LEFT JOIN projects ON tasks."projectId" = projects."id" WHERE entries."date" IN ('2021-01-04', '2021-01-05', '2021-01-06', '2021-01-07', '2021-01-08', '2021-01-09', '2021-01-10') GROUP BY tasks."id") AS t GROUP BY t.project ORDER BY total_time DESC;
>         project         | total_time 
> ------------------------+------------
>  GENUS                  |      39.52
>  ClearHabits App        |      18.52
>  Ancillary              |       5.49
>  Sustainability Network |       4.65
>  Reading                |       4.08
>  Diet                   |       3.47
>  Digital                |       3.27
>  Dwelling               |       3.06
>  Line Manager           |       1.92
>  Apply to University    |       1.75
>  Assets                 |       1.75
>  RAGE                   |       1.75
>  Second Brain           |       1.63
>  Appearance             |       1.54
>  Cycling                |       1.52
>  Mobility               |       1.45
>  Cooking                |       1.22
>  Chloe C-K              |       1.17
>  Marcia Y-H             |       0.87
>  MIAC                   |       0.87
>  Meditation             |       0.49
> ```
> ![[Untitled 16.png]]

## Reflection

### GENUS Project

- Project scoping is changing quite a bit
- Slow start after Christmas

### ClearHabits App (11 Hours)

![[Untitled 17.png]]
- Made big improvements with the UI
- Possibly spent a bit too much time overall. Need to finish UI and then time box contribution in balance with the rest.

## Improvements

- [x] Need to do more exercise. Go for at least 2 cycle this week
- [x] Finish clearhabits UI changes this week so I can move on with functional changes again (completed  2021-01-16 )
- [x] Invest more time into University search
- [x] Establish a good dynamic with Sustainability network surrounding dev changes
- [x] BoW for this year is still uncertain

# Sprint 3A (Commencing  2020-03-02 )

> [!note]+ View Calendar
> ![[Screenshot_20200317-2202072 1.png]]
> ![[Screenshot_20200317-2202142 1.png]]

## Time Commitments

### RAGE Productionisation (6.5 Hours) 4/10

- Minimal contribution to RAGE project
- Largely distracted by Vue/JS framework research
- Improvement: Separate Vue work into project time to ensure both RAGE and project requirements are met

### Data Driven Web Application (15 Hours) 8/10

- Completed a learning project at a stage I can reasonably leave it (Project wasn't left 80% done like I usually do)
- Uploaded an MVP release to [github](https://github.com/oliveryh/flask-tasks)
- Feel comfortable building a Flask/SQLAlchemy application from scratch

### Healthy Core (2 Hours) 3/10

- Very little commitment to exercise recently
- Can see positive strength improvements with gymnastics conditioning

### Read 15 Books in 2020 (30 mins) 2/10

- Again very little focus or routine this week
- Most evening time was spent researching JS into the late hours



![[Untitled 18.png|Screenshot of Flask Tasks for the v0.1.0 release]]

# Sprint 2B (Commencing  2020-02-17 )

> [!note]+ View Calendar
> ![[Screenshot_20200301-2207152 1.png]]
> ![[Screenshot_20200301-2207262 1.png]]

## Time Commitments

### RAGE Productionisation (39 Hours) 7/10

- Work went well but I consistently stayed later and performed tasks that had no real driver
- Lost agile methodology through the week
- Successfully deployed a new GPU from scratch within a day

### Data Driven Web Application (8.5 Hours) 5/10

- Good commitment in the first half
- Had a nice day of flow, working on the app itself
- Need to complete within this sprint to move onto other projects

### Healthy Core  (6 Hours) 5/10

- Completed my 10th PT workout
- Starting to feel stronger in my upper back which is helping
- Acid reflux is slowing me down but adjusting workouts to reduce symptoms
- Improvement: Increase consistency

### Read 15 Books in 2020 (5 Hours) 7/10

- Finished Reading Lost Connections
- Bought an ereader to improve opportunities to read

## What Went Well

- Generally committed to long term goals
- Continuing to cut down unnecessary phone use where possible

## Things to Improve

- Neglected diet and symptom management which should take priority
- Seem to be spending the evenings watching TV a lot
- Better time management needed to ensure leaving work at the right time

# Sprint 2A (Commencing  2020-02-03 )

# Sprint 1B (Commencing  2020-01-20 )

> [!note]+ View Calendar
> ![[Screenshot_20200202-2004102 1.png]]
> ![[Screenshot_20200202-2004022 1.png]]

## Time Commitments

### RAGE Productionisation (41 hours) 8/10

- Successfully moved this project to be more agile/Kanban based making work easier
- Completed a series of demos which improved my skill in doing demos
- Improvement: Have better confidence in my own abilities at work

### Data Driven Web Application (17 hours) 7/10

- Completed 7/17 chapters
- Started creating Task Exemplary app
- Building large amount of new skills and setting foundations for core application development skills

### Healthy Core (8 hours) 8/10

- Completed 4 PT set workouts
- Already seeing positive effects in stamina etc
- Strengthening my core is having positive effects on my spinal health
- Improvement: Have a better focus on diet and recovery from Acid Reflux

### Read 15 Books in 2020 (2h 30m) 5/10

- 216/324 pages of Lost Connections read
- Still have quite a slow reading pace
- Improvement: Increase reading time

## What went well

- Improved balance of tasks, not dominating time spent with work commitments

## Things to Improve

- Consider spreading weekend tasks to weekday evenings to reduce amount of anxiety on Sunday's
- Reduce screen time and check progress of this over the previous sprint

# Sprint 1A (Commencing  2020-01-06 )

## Completed Projects

- Completed Learning to Learn Course
- Caught up with Alex
- Bought new Glasses
- Committed to PT classes
- Completed 2/3 of Veganuary
- Deleted Facebook

## What Went Well

- Starting to use Notion more effectively

## Rooms for Improvement

- Lack of protein or regular meals on the Vegan diet. I need to do more meal planning
- Start meditation again
- Need to do more chunking for weekend tasks as this is often where I lose momentum
