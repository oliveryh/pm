---
name: entity-linking
description: Automatically create and link to markdown files for entities (people, terms, concepts, artifacts, organizations). Use when the user mentions important entities that should be tracked in separate notes, or when building a knowledge graph.
---

# Entity Linking Skill

Automatically identify and create markdown files for important entities, building a connected knowledge graph using Obsidian wikilinks.

## Configuration

Entity types and templates are defined in `entities.json`. To customize:

1. **View current entities**: Check `entities.json` for all supported types
2. **Add new types**: Add entries to the `entity_types` array
3. **Modify templates**: Edit the `template` structure for any type
4. **Change conventions**: Update `naming_conventions` and `linking_strategy`

### Default Entity Types

| Type | Directory | Description |
|------|-----------|-------------|
| Person | `People/` | Individuals, authors, colleagues |
| Concept | `Concepts/` | Ideas, theories, methodologies |
| Term | `Terms/` | Technical definitions, vocabulary |
| Organization | `Organizations/` | Companies, institutions, teams |
| Artifact | `Artifacts/` | Books, papers, projects, tools |
| Location | `Locations/` | Places, cities, venues |
| Event | `Events/` | Conferences, meetings |

## Workflow

1. **Detect**: User mentions an entity worth tracking
2. **Check**: Does the entity file already exist?
3. **Create**: If not, create file in appropriate directory using template from `entities.json`
4. **Link**: Reference using wikilinks: `[[Entity Name]]`
5. **Update**: Add new information and update timestamp when entity is mentioned again

## File Naming

- **Title case with spaces**: `Machine Learning.md`, `Martin Fowler.md`
- **Full names for people**: `Martin Fowler.md` not `Fowler.md`
- **Disambiguate if needed**: `John Smith (Engineer).md`
- **Acronyms as aliases**: Add to frontmatter, link as `[[REST|REST API]]`

## Linking Strategy

- **First mention**: Create/link when entity is first mentioned in a note
- **Don't over-link**: Avoid linking every occurrence in same paragraph
- **Bidirectional**: Ensure related entities link to each other
- **Context-aware**: Link again in different sections if relevant

## Quick Examples

### Person Entity

```markdown
---
entity_type: person
tags: [people]
created: 2024-01-15
updated: 2024-01-15
role: Chief Scientist
organization: [[ThoughtWorks]]
---

# Martin Fowler

## Overview
British software developer and author known for refactoring and microservices.

## Background
- **Role**: Chief Scientist
- **Organization**: [[ThoughtWorks]]
- **Expertise**: Software architecture, agile development

## Key Contributions
- Author of "Refactoring"
- [[Microservices]] architecture patterns

## References
- [martinfowler.com](https://martinfowler.com)
```

### Concept Entity

```markdown
---
entity_type: concept
tags: [concepts, distributed-systems]
created: 2024-01-15
updated: 2024-01-15
domain: Distributed Systems
---

# Eventual Consistency

## Definition
Consistency model guaranteeing that all replicas eventually converge to the same value.

## Key Ideas
- Trade-off between consistency and availability
- Requires conflict resolution strategies

## Related Concepts
- [[CAP Theorem]]
- [[Strong Consistency]]

## Applications
- Amazon DynamoDB
- Apache Cassandra
```

## Best Practices

**When to create entities:**
- Important recurring mentions
- Complex topics needing more context
- Part of a connected network
- Useful reference material

**When NOT to create:**
- One-off mentions
- Well-known common terms
- Temporary/specific to one task
- Overly narrow scope

**Metadata essentials:**
- Always include: `entity_type`, `tags`, `created`, `updated`
- Add type-specific fields from template
- Keep tags specific and meaningful
- Update `updated` field when modifying

**Organization:**
- Use consistent directory structure
- Keep one level deep
- Cross-reference related entities
- Maintain bidirectional links

## Customization Examples

### Adding a New Entity Type

Edit `entities.json`:

```json
{
  "type": "project",
  "directory": "Projects",
  "description": "Software projects, initiatives, campaigns",
  "template": {
    "frontmatter": {
      "entity_type": "project",
      "tags": ["projects"],
      "status": "",
      "start_date": ""
    },
    "sections": [
      "## Overview",
      "## Goals",
      "## Team",
      "## Timeline",
      "## Related Projects"
    ]
  }
}
```

### Modifying an Existing Template

In `entities.json`, find the entity type and edit its `template.sections` array or `template.frontmatter` object.

## Integration

Works seamlessly with:
- **Obsidian Markdown**: All standard markdown features
- **Obsidian Bases**: Query entities with `type: person`
- **JSON Canvas**: Add entity nodes to visual maps

## References

- [entities.json](./entities.json) - Entity type definitions and templates
- [Obsidian documentation](https://help.obsidian.md)
- [Zettelkasten method](https://zettelkasten.de/)
