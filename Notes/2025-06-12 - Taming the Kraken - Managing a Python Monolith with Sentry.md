# Info

- How does [[Kraken Technologies]] use [[10 Software Engineering/DevOps, Infrastructure & Configuration/Sentry]] to manage a monolith python platform
- Speaker by [[David Winterbottom]] - Principal Engineer at [[Kraken Technologies]]

# Notes

## How do we use Sentry at Kraken Tech?

- Something has gone wrong
	- Detect
	- Diagnose
	- Resolve
- Only log things in Sentry that you can fix
- Tech Debt Burdown
	- How do we devote our energy
		- Sort by frequency
		- Sort by customer impact
		- Sort by embarrassment factor
- Careers: https://octopus.energy/kraken-tech-careers/

# Thoughts

- We should create an automation to send alerts to the team slack channel when new sentry alerts are auto-assigned to our team
- Tagging the alerts with the stage of the environment (sandbox, QA, prod etc, so we can better triage issues)
- Using tamper monkey to jump to the best resources they need next
	- For example linking to another system related to the issue
- Commit message syntax
	- Marks issues as resolved if particular commit message is used "e.g. FLEX-1234"
- "Spa Days" once a month to work on tech debt
- Tracking department or team level metrics for number of unresolved issues using Grafana
- Change `__str__` methods to make string representation of instances unique and easier to identify in Sentry
- Interrupted Engineer - A role in Kraken Tech that is nominated to be interrupted?
- Github action that puts failing tag on PRs that are older than X days an not rebased
