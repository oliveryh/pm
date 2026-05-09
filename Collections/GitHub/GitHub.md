# Audit

- Check that all repos are still being actively used
- Delete any unused forks
- Check if [apps authorised](https://github.com/settings/applications) are still relevant
- Use the [Code Explorer](https://docs.github.com/en/graphql/overview/explorer) to see what branches are there ([further examples](https://github.com/github/platform-samples/tree/master/graphql/queries))

    ```graphql
    # Type queries into this side of the screen, and you will 
    # see intelligent typeaheads aware of the current GraphQL type schema, 
    # live syntax, and validation errors highlighted within the text.
    
    # We'll get you started with a simple query showing your username!
    [query { 
      viewer { 
        repositories(first: 30) {
          nodes {
            name
            refs(refPrefix: "refs/heads/", first: 10) {
              edges {
                node {
                  branchName:name
                }
              }
              pageInfo {
                endCursor #use this value to paginate through repos with more than 100 branches
              }
            }
          }
        }
      }
    }](https://www.notion.so/2015-Macbook-Pro-15-f79d0dee81a34c6283b0bfcf6631ccf3?pvs=21)
    ```

- You can then use `gron | egrep -e "name|branchName" | sed 's/.*name = /- /g' | sed 's/.*branchName = / - /g' | sed 's/"//g' | sed 's/;//g'` from the output to generate a formatted list of repo names and branches
    - Or alternatively using `jq` you can use the following: `jq ".data.viewer.repositories.nodes[]" | jq "{name:.name,branches:.refs.edges[].node.branchName}"`
- Check all issues are tagged appropriately and still relevant

# Log

## 2025-10-22

Backed up repos to iCloud by running the following in a folder that's backed up automatically

`export GITHUB_TOKEN=<redacted>; curl -H "Authorization: Bearer $GITHUB_TOKEN" -H "Content-Type: application/json" -X POST https://api.github.com/graphql -d '{"query":"query { viewer { repositories(first: 100, ownerAffiliations: OWNER) { nodes { sshUrl } } } }"}' | jq -r '.data.viewer.repositories.nodes[].sshUrl' | xargs -L1 git clone`

## 2025-10-20

- Audited
	- Started with 16 Public, 17 Private | 24 Sources, 5 Forks, 4 Archived
- Deleted Repos
	- battlestation
	- blog
	- blog-archived
	- composure
	- Html2Epub
	- jazz-tools-local-issue-repro
	- rust-advent-of-code-2023
	- starter-graphql-express
	- vue-livestore-minimal-example
- Archived
	- assistant
	- blog-2020-to-2024
	- control-centre
	- financials
	- flask-tasks
- Tasks
	- [x] Asked to delete Piclo code challenge repos

## April 21, 2025

- Audited
    - Started with 34 repos - 15 Public, 19 Private | 25 Sources, 5 Forks, 4 Archived
    - Ended with 29 repos - 14 Public, 15 Private | 21 Sources, 4 Forks, 4 Archived
- Ones to watch
    - `control-centre` - I stopped using this recently. I wonder if it's worth running locally again and getting a sense of how useful I'll find it going forward
        - It looks like Jazz.Tools might offer similar needs, apart from doing things locally on the computer it's being run from
    - `production-metrics`
        - Having obsessed a little less over metrics recently, a lot of the code that used `datasette-dashboards` is largely obsolete/unused
        - There are some useful scripts dotted around in this repo because of the shared access to previously written clients
        - The tech stack is massively bloated having used the cookie cutter
    - `pledges` - Now that CS is no more, I could possibly take screenshots of this, add the tech stack, and make this a public archive - for posterity
    - `blog` - Could be deleted except from the fact it probably has some old article content I'd rather transfer. Equally, I could screenshot and archive for posterity. It looks like `blog-archived` is the built equivalent of this, but the source with markdown may make more sense to keep.
    - `financials` - Some interesting data here that I should extract and save somewhere securely
    - `composure` and `battlestation` - Idea is to extract any useful functionality over to `nixos-config`
- Delete Repos
    - `secrets` - Originally setup to store NixOS secrets, but never used
    - `tldraw-server` - An attempt at hosting a `tldraw` server
    - `starter-fastapi-graphql` - There wasn't very much in this starter code - and it was 5 years old
    - `vue3-markdown-it` - Fork was archived, and not sure what I was using this for
    - `mitm` - Used to extract data from Everfit, but not much value in the repo itself
- Archive Repos
    - `clear-habits` - Archived on March 15, 2025
- Revoked OAuth Access
    - Zed
    - vue0

## December 19, 2024

- Cleaned up issues of main repos

## October 26, 2024

- Audited
    - Started with 41 repos - 22 Public, 19 Private | 25 Sources, 11 Forks, 5 Archived
    - Ended with 32 repos - 17 Public, 15 Private | 22 Sources, 7 Forks, 3 Archived
- Ones to watch
    - `datasette-dashboards` - My intention is to move away from Datasette Dashboards so this fork can probably be deleted once that's done
    - `datasette-auth-github` - Similar to the above, I may be able to move away from this repo
    - `composure` and `battlestation` - There's overlapping functionality and limited usage
    - `vue3-markdown-it` - This was probably installed as a dependency from some Obsidian plugin I abandoned
    - `Html2Epub` - This is linked to the now-archived repo `pandora`
- Created Repos
    - `piclo-code-challenge` - Created my own copy of this as the original might get deleted by Piclo
- Delete Repos
    - `obsidian-pandora-vue` - This was an obsidian vue plugin that was an early attempt to create something similar to Readwise Reader
    - `narwhals` - This was forked. I'll probably fork again to make my first open source contribution
    - `obsidian-rss`
    - `open-ai-test`
    - `LoveIt`
    - `notion-tree-viewer` - Move this over to toybox
    - `crib`
    - `crib-web-ui`
    - `starter-fastapi-dev-container`

## February 11, 2024

- Audit repositories (Went from 43 Repositories to X Repositories)
- Delete Repos
    - `inoreader-sync`
    - `test-workflow` - Used to test a waffle removal script for work
    - `obsidian-kanban`
    - `pandora-obsidian`
    - `slack-saved-to-obsidian` - A script that printed slack saved items into a Rich table but have since migrated this logic to `control-centre`
- Moved to `toybox` repo
    - `youtube-histviz`
- Committed local work for
    - `open-ai-test`
- Archived
    - `obsidian-pandora-vue`

## August 15, 2023

- Updated payment methods to new Monzo card (expiring 07/26)

## February 5, 2023

- Archived repos
    - `pandora`
    - `obsidian-rss`

## December 29, 2022

- Create `mitm` repository - Contains initial efforts to reverse engineer Everfit API
- Create `financials` repository to hold WIP work on monzo visualisation (mainly concerned about preserving santander payslips). If these are stored in Hard Drive then I can probably not do this
- Delete fork of https://github.com/matthewearl/photo-a-day-aligner
- Renamed all branches from `master` to `main` where possible (excludes some instances where these repos are used as gitmodules or for github blogs)

## December 19, 2022

- Archived oracle repo

## October 10, 2022

- Deleted
    - `monzo-viz`
    - `viz-github-reviews`
    - `obsidian-emoji-toolbar-wip`
    - `scripts-and-configuration`
    - `django-htmx-fun`
    - `django-htmx-todo-list`
    - `full-stack-fastapi-postgresql`
    - `interactive-coding-challenges`
    - `location-history-visualizer`
    - `django-htmx-todo`
- Moved to toybox Repo
    - `cyclexa`
    - `budget-doughnut`
