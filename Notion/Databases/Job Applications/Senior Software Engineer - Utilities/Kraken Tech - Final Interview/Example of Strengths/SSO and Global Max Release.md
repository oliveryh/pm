---
base: "[[Example of Strengths.base]]"
Impact: High
Quick Summary: |-
  - C: SSO coupled with migration to new product/frontend
  - A: Spoke to PM and Environments WG to understand landscape
  - A: Realised rushed SSO to have big customer impact
  - A: Suggested delaying
  - R: Smooth release
  - L: Early communication, Risk
Status: Done
Signal Areas:
  - Transparency
  - Get Shit Done
  - Customer Obsessed
  - Failure
---
# Context
- There was a marketing push to release a new product of ours to a new market, which involved migrating users to a new frontend
- In the background, there were working groups aiming to provide a direction on our environment strategy (wether we consolidate all backends, map similarly to AWS regions, have backends per enterprise customer)
- It became clear that a coupled SSO feature that was delayed by shifting strategy in our environments would delay the release of the new frontend to particular user groups

# Action
- Spent time with the environments working group to understand the trajectory it was heading in
- Spoke with our PM to understand how much of a requirement SSO was
- I suggested we decouple the SSO release and spend a sprint allowing users to get access to features on the new features in the legacy backend architecture
- Identify a subset of users to migrate to
- I also fed this delay back and alongside other factors, delayed the user migration

# Result
- We had adequate time to prepare the user migration without the additional risk or blocker of rolling out SSO at short notice to users
- Users were on the new and improved product earlier

# Learnings
- Negotiation
- Early communication of risks


🚩User Experience > Security