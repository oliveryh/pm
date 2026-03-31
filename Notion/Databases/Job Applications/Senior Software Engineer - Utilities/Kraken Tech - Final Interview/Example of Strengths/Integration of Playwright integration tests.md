---
base: "[[Example of Strengths.base]]"
Impact: Low
Quick Summary: ""
Status: Done
Signal Areas:
  - Get Shit Done
---
# Context
- Our frontend test suite using TestCafe was taking too long to finish or was flaky, often holding up frontend PRs by 20-30 minutes
- The team make-up meant the owner of the frontend tests was vague, so it continued to get worse

# Action
- I identified Playwright as a good potential alternative, noting the improved speed, reduced flakiness, and improved DevEx
- Prototyped a single test that mimicked another E2E test
- Demoed the improved capabilities in Show & Tell
- Shared an RFC PR for engineers to contribute their thoughts
- 2 Other engineers and myself discussed the trade-offs of particular designs and I fed those decisions in a full PR
- Used AI to migrate further tests in a measured way

# Result
- Reduced time to merge

# Learnings
- Often it’s better to propose a solution and ask others to critique your approach than to wait for the perfect solution to emerge