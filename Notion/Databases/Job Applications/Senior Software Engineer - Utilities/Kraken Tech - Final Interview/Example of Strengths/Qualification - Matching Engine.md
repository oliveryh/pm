---
base: "[[Example of Strengths.base]]"
Impact: High
Quick Summary: |-
  - C: Have a marketplace with two sides
  - C: Have a legacy matching engine process that is ripe for automation
  - C: Expansion to new markets <balance> not slowing down core engine
  - A: Owned
  - A: Fun - Hackation
  - A: Optimisation to bring from 1-2 hours to 10-20 mins
  - A: Push back on design
  - A: Democratised maintenance
  - R: Reduced maintenance
  - L: Balance business requirements with customer requirements
Status: Done
Signal Areas:
  - Customer Obsessed
  - Get Shit Done
---
# Context
- We provide a marketplace so need buyers and sellers to share information about their assets or needs and then match them
- This process largely happens asynchronously, and we used step functions to scale that process
- Our expansion into new markets meant there was constantly new demand for rules to be added, and we would need to see how these fit in with the core engine

# Action
- **Ownership - **Worked closely with another engineer to continue to optimise the matching engine at various opportunities
- **Fun - **We had a hackathon where we used Rust to see how well an alternative architecture could speed up the matching process
- **Customer Obsession - **We looking in detail at how our geographic matching could be improved with approximations, without a significant impact on customers
- Sometimes we’d push back on particular rules or design patterns if we knew it might slow down as a whole
- I tried to democratise the maintenance of the matching engine

# Result
- The matching engine continued to keep up with demand of our expansion into new regions and adoption of shorter term markets

# Learnings
- Balance business requirements with impact to the customers
- If the matching engine ground to a halt, it would have an impact on all customers
- Avoid key person dependencies

