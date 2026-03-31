---
base: "[[Example of Strengths.base]]"
Impact: Medium
Quick Summary: |-
  - C: 40X errors causing distractions in monitoring channels
  - C: Regularly investigate or saw issue in post-morterms
  - A: Vouched for time to investigate
  - A: Quantified impact
  - A: Proposed solution and shared
  - R: Reduced noise and improved user experience
  - L: Data driven decision making
Status: Done
Signal Areas:
  - Get Shit Done
---
# Context
- Had a high rate of 40X errors being hit, most notably a large disruption to engineers in the form of noise in monitoring channels / Sentry
- Regularly investigated the cause of these errors and regularly found it was due to expired tokens
- Involved in post-mortems where root causes were down to confusion of interactions failing on old tabs/sessions

## Actions
- I vouched for time to investigate the issue in our working groups / 20% time amongst other engineers
- I quantified the impact of various root causes and found that expired tokens weren’t being cleaned up properly if a user didn’t change page for longer than our token lifetime
- Shared this and proposed/prototyped a small actionable change that minimised impact to customers and worked within our time constraints
- If a customers token is about to expire, redirect them to login - as opposed to relying on other mechanisms

# Result
- Reduced noise in our engineering channel
- Improved out users experience. Instead of returning to a screen that is broken or lacks user feedback, they’re kicked back to the login screen

# Learnings
- Persist on vouching for an issue that you have the experience to identify
- Quantifying a problem acts as a good way to get buy-in for working on a problem and impact on customers