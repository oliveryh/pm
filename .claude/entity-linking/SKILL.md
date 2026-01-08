---
name: entity-linking
description: Automatically create and link to markdown files for entities (people, terms, concepts, artifacts, organizations). Use when the user mentions important entities that should be tracked in separate notes, or when building a knowledge graph.
---

# Entity Linking Skill

This skill enables Claude Code to automatically identify and create markdown files for important entities (people, terms, concepts, artifacts, organizations) and link to them using Obsidian wikilinks, building a connected knowledge graph.

## Overview

When working with Obsidian notes, this skill helps you:
- **Identify entities** mentioned in conversations or documents
- **Create dedicated markdown files** for each entity
- **Link to entities** using Obsidian's wikilink syntax `[[Entity Name]]`
- **Organize entities** in a logical directory structure
- **Maintain metadata** using frontmatter properties

## Entity Types

### Supported Entity Types

| Type | Directory | Description |
|------|-----------|-------------|
| **Person** | `People/` | Individuals, authors, historical figures, colleagues |
| **Concept** | `Concepts/` | Ideas, theories, principles, methodologies |
| **Term** | `Terms/` | Technical terms, definitions, vocabulary |
| **Organization** | `Organizations/` | Companies, institutions, groups, teams |
| **Artifact** | `Artifacts/` | Books, papers, projects, products, tools |
| **Location** | `Locations/` | Places, cities, venues, sites |
| **Event** | `Events/` | Conferences, meetings, historical events |

## Directory Structure

```
/
├── People/
│   ├── John Doe.md
│   └── Jane Smith.md
├── Concepts/
│   ├── Machine Learning.md
│   └── Knowledge Graph.md
├── Terms/
│   ├── API.md
│   └── Microservices.md
├── Organizations/
│   ├── Anthropic.md
│   └── OpenAI.md
├── Artifacts/
│   ├── The Pragmatic Programmer.md
│   └── Claude Code.md
├── Locations/
│   └── San Francisco.md
└── Events/
    └── GopherCon 2024.md
```

## Entity File Templates

### Person Template

```markdown
---
entity_type: person
tags:
  - people
created: YYYY-MM-DD
updated: YYYY-MM-DD
role: [Role/Title if known]
organization: [[Organization Name]]
---

# [Person Name]

## Overview

Brief description of who this person is and why they're relevant.

## Background

- **Role**:
- **Organization**:
- **Expertise**:

## Related Notes

-

## Key Contributions

-

## References

-
```

### Concept Template

```markdown
---
entity_type: concept
tags:
  - concepts
created: YYYY-MM-DD
updated: YYYY-MM-DD
domain: [Field/Domain]
---

# [Concept Name]

## Definition

Clear, concise definition of the concept.

## Key Ideas

-

## Examples

-

## Related Concepts

-

## Applications

-

## References

-
```

### Term Template

```markdown
---
entity_type: term
tags:
  - terms
  - definitions
created: YYYY-MM-DD
updated: YYYY-MM-DD
domain: [Field/Domain]
---

# [Term Name]

## Definition

Clear definition of the term.

## Usage

How and when this term is used.

## Examples

```
[Code or text examples if applicable]
```

## Related Terms

-

## References

-
```

### Organization Template

```markdown
---
entity_type: organization
tags:
  - organizations
created: YYYY-MM-DD
updated: YYYY-MM-DD
type: [Company/Institution/Team/etc.]
---

# [Organization Name]

## Overview

Description of the organization.

## Key Information

- **Type**:
- **Industry**:
- **Founded**:
- **Website**:

## Related People

-

## Projects/Products

-

## References

-
```

### Artifact Template

```markdown
---
entity_type: artifact
tags:
  - artifacts
created: YYYY-MM-DD
updated: YYYY-MM-DD
type: [Book/Paper/Project/Tool/etc.]
author:
published: YYYY-MM-DD
---

# [Artifact Name]

## Overview

Description of what this artifact is.

## Key Information

- **Type**:
- **Author**:
- **Published**:
- **URL/Source**:

## Summary

Brief summary or key takeaways.

## Key Concepts

-

## Related Artifacts

-

## References

-
```

### Location Template

```markdown
---
entity_type: location
tags:
  - locations
created: YYYY-MM-DD
updated: YYYY-MM-DD
type: [City/Building/Country/etc.]
---

# [Location Name]

## Overview

Description of the location.

## Key Information

- **Type**:
- **Region/Country**:
- **Coordinates**:

## Significance

Why this location is relevant.

## Related Entities

-

## References

-
```

### Event Template

```markdown
---
entity_type: event
tags:
  - events
created: YYYY-MM-DD
updated: YYYY-MM-DD
date: YYYY-MM-DD
location: [[Location Name]]
---

# [Event Name]

## Overview

Description of the event.

## Key Information

- **Date**:
- **Location**:
- **Organizer**:
- **Type**:

## Participants

-

## Key Outcomes

-

## Related Notes

-

## References

-
```

## Workflow

### 1. Entity Detection

When the user mentions an entity worth tracking:
- Identify the entity type (person, concept, term, etc.)
- Determine the appropriate file name (use title case, spaces allowed)
- Check if the file already exists

### 2. File Creation

If the entity file doesn't exist:
1. Create the appropriate directory if needed
2. Create the markdown file with the correct template
3. Fill in known information from context
4. Use today's date for `created` field
5. Add relevant tags

### 3. Linking

When referencing an entity in notes:
- Use wikilink syntax: `[[Entity Name]]`
- The link should match the filename (without .md extension)
- Use display text if needed: `[[Entity Name|display text]]`
- Can link to specific sections: `[[Entity Name#Overview]]`

### 4. Updates

When new information about an entity is discovered:
- Update the existing entity file
- Update the `updated` field with today's date
- Add new information to relevant sections
- Maintain links to related entities

## Best Practices

### File Naming

- Use **title case** for entity names: `Machine Learning.md`, not `machine-learning.md`
- Use **spaces**, not hyphens or underscores: `John Doe.md`, not `john-doe.md`
- Keep names **concise but descriptive**: `REST API.md`, not `REST.md`
- Use **full names** for people: `Martin Fowler.md`, not `Fowler.md`

### Linking Strategy

1. **First mention**: When an entity is first mentioned in a note, create/link to it immediately
2. **Subsequent mentions**: You can link again if it's in a different section/context
3. **Don't over-link**: Avoid linking every single mention in the same paragraph
4. **Bidirectional links**: Ensure related entities link to each other

### Organization

- **Consistent structure**: Use the same directory structure across all vaults
- **Clear hierarchy**: Keep directories shallow (one level deep)
- **Meaningful tags**: Add specific tags beyond the entity type
- **Cross-reference**: Link related entities together

### Metadata

Always include in frontmatter:
- `entity_type`: The type of entity
- `tags`: At minimum, the entity type tag
- `created`: Date the file was created
- `updated`: Date of last significant update

## Examples

### Example 1: Creating a Person Entity

**User mentions**: "I read an interesting article by Martin Fowler about microservices."

**Actions**:
1. Create `People/Martin Fowler.md`:
```markdown
---
entity_type: person
tags:
  - people
  - software-architecture
created: 2024-01-15
updated: 2024-01-15
role: Chief Scientist
organization: [[ThoughtWorks]]
---

# Martin Fowler

## Overview

Martin Fowler is a British software developer, author, and international public speaker on software development. He is known for his work in object-oriented programming, design patterns, and agile software development.

## Background

- **Role**: Chief Scientist
- **Organization**: [[ThoughtWorks]]
- **Expertise**: Software architecture, refactoring, microservices, agile development

## Key Contributions

- Author of "Refactoring: Improving the Design of Existing Code"
- Influential work on [[Microservices]] architecture
- Advocate for agile and evolutionary architecture

## References

- [Personal website](https://martinfowler.com)
```

2. In your current note, reference as: `I read an interesting article by [[Martin Fowler]] about [[microservices]].`

### Example 2: Creating a Concept Entity

**User discusses**: "The concept of eventual consistency is important in distributed systems."

**Actions**:
1. Create `Concepts/Eventual Consistency.md`:
```markdown
---
entity_type: concept
tags:
  - concepts
  - distributed-systems
  - database
created: 2024-01-15
updated: 2024-01-15
domain: Distributed Systems
---

# Eventual Consistency

## Definition

Eventual consistency is a consistency model used in distributed computing to achieve high availability. It guarantees that, if no new updates are made to a data item, eventually all accesses to that item will return the last updated value.

## Key Ideas

- **Trade-off**: Sacrifices immediate consistency for availability and partition tolerance (CAP theorem)
- **Convergence**: All replicas will eventually converge to the same value
- **Conflict resolution**: Requires strategies to handle concurrent updates

## Examples

- Amazon DynamoDB
- Apache Cassandra
- DNS (Domain Name System)

## Related Concepts

- [[CAP Theorem]]
- [[Strong Consistency]]
- [[Distributed Systems]]
- [[BASE Properties]]

## Applications

- Large-scale distributed databases
- Content delivery networks
- Collaborative editing systems

## References

- [Amazon's Dynamo paper](https://www.allthingsdistributed.com/files/amazon-dynamo-sosp2007.pdf)
```

2. In your note, reference as: `The concept of [[Eventual Consistency]] is important in [[distributed systems]].`

### Example 3: Creating an Artifact Entity

**User mentions**: "The book 'Domain-Driven Design' by Eric Evans changed how I think about software."

**Actions**:
1. Create `People/Eric Evans.md` (person entity)
2. Create `Artifacts/Domain-Driven Design.md`:
```markdown
---
entity_type: artifact
tags:
  - artifacts
  - books
  - software-design
created: 2024-01-15
updated: 2024-01-15
type: Book
author: "[[Eric Evans]]"
published: 2003-08-20
---

# Domain-Driven Design

## Overview

"Domain-Driven Design: Tackling Complexity in the Heart of Software" is a book by Eric Evans that presents an approach to software development for complex systems. It introduces strategic and tactical patterns for building robust domain models.

## Key Information

- **Type**: Book
- **Author**: [[Eric Evans]]
- **Published**: August 2003
- **ISBN**: 978-0321125215
- **Publisher**: Addison-Wesley

## Summary

The book emphasizes collaboration between technical and domain experts, using a ubiquitous language, and building rich domain models. It provides patterns for structuring domain logic and maintaining model integrity.

## Key Concepts

- [[Ubiquitous Language]]
- [[Bounded Context]]
- [[Aggregates]]
- [[Entities and Value Objects]]
- [[Domain Events]]
- [[Repositories]]

## Related Artifacts

- [[Implementing Domain-Driven Design]] by [[Vaughn Vernon]]
- [[Patterns of Enterprise Application Architecture]] by [[Martin Fowler]]

## References

- [Book website](https://domainlanguage.com/ddd/)
```

3. Reference in note: `The book [[Domain-Driven Design]] by [[Eric Evans]] changed how I think about software.`

## Special Cases

### Ambiguous Names

If an entity name is ambiguous, add clarification:
- `John Smith (Engineer).md` vs `John Smith (Manager).md`
- `REST (Architecture).md` vs `REST (Sleep).md`

### Acronyms

- Store both full name and acronym: `Application Programming Interface.md`
- Add acronym as an alias in frontmatter:
```yaml
---
aliases:
  - API
---
```
- Link using either: `[[Application Programming Interface]]` or `[[Application Programming Interface|API]]`

### Composite Entities

For entities that belong to multiple categories:
- Choose the most specific category
- Use tags to indicate other aspects
- Cross-reference in related sections

Example: A book written by a person
- File: `Artifacts/The Pragmatic Programmer.md`
- Include link to `[[Dave Thomas]]` and `[[Andy Hunt]]` as authors
- In the authors' files, link back to the book in "Key Contributions"

## Integration with Other Skills

### With Obsidian Markdown Skill

Entity linking works seamlessly with standard Obsidian Markdown:
- Use all markdown formatting within entity files
- Embed entity information: `![[Martin Fowler#Overview]]`
- Create callouts: `> [!info] See also [[Related Concept]]`

### With Obsidian Bases Skill

Create entity databases using Bases:
- Query all people: `type: person`
- Filter by organization: `organization: [[Anthropic]]`
- Sort by date: `sort: created desc`

## Tips for Effective Entity Management

1. **Start simple**: Don't create entities for everything, focus on what's important
2. **Evolve naturally**: Let your knowledge graph grow organically
3. **Review regularly**: Periodically review and update entity files
4. **Maintain connections**: Keep bidirectional links updated
5. **Use consistent naming**: Follow the naming conventions strictly
6. **Add context**: Include enough information for future reference
7. **Link liberally**: Create connections between related entities
8. **Update timestamps**: Keep the `updated` field current

## When to Create Entity Files

### Do Create

- **Important recurring entities**: Mentioned multiple times or likely to be referenced again
- **Complex entities**: Need more context than a simple inline description
- **Connected entities**: Part of a network of related concepts
- **Reference material**: Will be useful to look up later

### Don't Create

- **One-off mentions**: Unlikely to be referenced again
- **Well-known terms**: Common knowledge that doesn't need explanation
- **Temporary entities**: Specific to one conversation or task
- **Overly specific**: Too narrow to be useful for future reference

## References

- [Obsidian documentation](https://help.obsidian.md)
- [Zettelkasten method](https://zettelkasten.de/)
- [Personal Knowledge Management](https://en.wikipedia.org/wiki/Personal_knowledge_management)
- [Building a Second Brain](https://www.buildingasecondbrain.com/)
