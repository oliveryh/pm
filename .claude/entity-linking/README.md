# Entity Linking Skill

Automatically create and link to markdown files for entities (people, concepts, terms, etc.) using Obsidian wikilinks.

## Quick Start

This skill will automatically:
1. Detect when you mention important entities
2. Create markdown files in organized directories
3. Link them using `[[Entity Name]]` syntax
4. Build a connected knowledge graph

## Customization

**All entity types and templates are defined in `entities.json`**

### View Current Entities

Open `entities.json` to see all entity types. Default types:
- **Person** → `People/` directory
- **Concept** → `Concepts/` directory
- **Term** → `Terms/` directory
- **Organization** → `Organizations/` directory
- **Artifact** → `Artifacts/` directory
- **Location** → `Locations/` directory
- **Event** → `Events/` directory

### Add a New Entity Type

Add an entry to the `entity_types` array in `entities.json`:

```json
{
  "type": "project",
  "directory": "Projects",
  "description": "Software projects and initiatives",
  "template": {
    "frontmatter": {
      "entity_type": "project",
      "tags": ["projects"],
      "status": ""
    },
    "sections": [
      "## Overview",
      "## Goals",
      "## Team"
    ]
  }
}
```

### Modify an Existing Template

In `entities.json`, find the entity type and edit:
- `template.frontmatter` - YAML properties
- `template.sections` - Markdown sections

### Change Naming or Linking Behavior

Edit the `naming_conventions` and `linking_strategy` sections in `entities.json`.

## Files

- `SKILL.md` - Full skill documentation
- `entities.json` - Entity types and templates (customize this!)
- `plugin.json` - Skill metadata
- `README.md` - This file

## Examples

See `SKILL.md` for detailed examples of created entity files.
