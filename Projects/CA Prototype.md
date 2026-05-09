---
status: Active
base: "[[Projects.base]]"
start_date: 2026-04-27
end_date: 
---

# Questions

- The tool has been created to help save us a great deal of time writing up our cases to be FCA compliant.
	- What is required for it to be FCA compliant?
	- What was your previous process like?
- Distribution
	- How do you plan to share updates?
	- Do you plan to share an EXE file?
- I have found dozens of silly bugs, some quite big, and imagine there are loads more.
	- Do you have information on what these are?
- Future
	- Template whereby AI could interpret the transcript of the interview and populate the tool, or maybe even do this live if that is possible.
- Code development lifecycle
	- Set up a repository

## Session

- Generally make hand-written notes
	- Angela is looking to generate transcripts
- Takes a long time
	- Send letter
	- Send legalise
- Timeline
	- 

# Code Analysis

Reviewed `oliveryh/debtonator` (cloned 2026-05-04). The tool is a Windows desktop app built with Python + tkinter, distributed as a single EXE via PyInstaller. It captures client demographics, income, debts, expenses, and assets across a multi-tab notebook UI, then auto-generates FCA-compliant advisory write-up text for pasting into a case management system.

## What it does well

- Domain content is comprehensive — `OptionsOutput.py`, `PriorityText.py`, and `IncomeMax.py` together cover ~26 debt resolution options and ~40 income maximisation routes with detailed, accurate legal text
- The EXE distribution approach is practical for a non-technical audience
- Income and debt totals are reactive (update as fields change)

## Issues across the SDLC

### Architecture & Code Quality

- **Monolithic UI file** — `Debtonator-v1-1.py` is ~2000+ lines with no separation between UI layout, event handlers, and business logic. Any change risks breaking unrelated functionality.
- **Positional index arrays for state** — widget values are read via `widget_flag[i]`, `debt_widget_flag[i]`, `expenses_flag[i]` with magic range slices (`range(0,4)` = earnings, `range(4,12)` = other earnings etc.). This is invisible coupling that breaks silently if widget order changes.
- **Giant if/elif chains** — all three helper modules are just 25–26 branch if/elif functions returning hardcoded strings. A dict or JSON data file would make these maintainable without touching code.
- **Hardcoded benefit rates** — `ChildBen1 = 27.05`, `ChildBen2 = 17.90` with a comment "hardcoded 26/27 rates so will need updating". These should be in a config file.
- **Dead code** — the original string-keyed version of `PriorityText` (~100 lines) is still in the file, just commented out.
- **Version number in filename** — `Debtonator-v1-1.py` instead of using git tags.

### Data & Validation

- No persistent data model — state lives entirely in tkinter widget variables. There's no `ClientCase` object.
- Validation is a single `.isdigit()` check with `#### NEED ERROR HANDLING` comments left in.
- `debug1.txt` uses raw tkinter widget paths (`.!notebook.!frame.!entry2`) as keys — brittle and UI-coupled.

### Testing

- Zero tests. Business logic (income totals, priority debt detection, option selection) is completely untested.
- Manual testing via `debug1.txt` session save/reload.

### Version Control & Repository

- Two commits, both effectively "initial commit" — no meaningful commit history.
- `debug1.txt` and `refresh_info.txt` are committed to the repo — should be in `.gitignore`.
- Ed hasn't set up GitHub yet (as of 2026-05-01).

### Distribution & Deployment

- No CI/CD — EXE must be built and distributed manually.
- Unsigned EXE is likely to be blocked by corporate IT security (this is what Ed is checking).
- No versioning or auto-update mechanism for distributed users.

### Documentation

- README contains only the title "# debtinator" (wrong spelling).
- No docstrings on any functions.

## Recommendations

### Replacing if/elif Chains with Dict Lookups

All three helper modules (`OptionsOutput`, `PriorityText`, `IncomeMax`) follow the same pattern — a function with 20–26 `elif` branches, each returning a string. This is the current shape:

```python
# Current: OptionsOutput.py
def OptionsOutput(selection):
    text = ""
    if selection == 0:
        text = "\nBREATHING SPACE:"
        return text
    elif selection == 1:
        text = "\nMORATORIUM: This option is suitable because..."
        return text
    elif selection == 2:
        text = "\nDO NOTHING: ..."
        return text
    # ... 23 more branches
```

The Pythonic fix is a dict — define the data once, look it up in one line:

```python
# Refactored: options.py
_OPTIONS = {
    0:  "\nBREATHING SPACE:",
    1:  "\nMORATORIUM: This option is suitable because...",
    2:  "\nDO NOTHING: ...",
    # ...
}

def get_option_text(selection: int) -> str:
    return _OPTIONS.get(selection, "")
```

This cuts ~300 lines of `OptionsOutput.py` down to ~30. The logic and data are separate, and adding a new option is one line.

Taking it further — move the strings to a JSON file so non-developers (e.g. Ed, or a policy team) can update the advisory text without touching Python:

```python
# options_text.json
{
  "0": "BREATHING SPACE: ...",
  "1": "MORATORIUM: ...",
  ...
}
```

```python
# options.py
import json
from pathlib import Path

_OPTIONS = json.loads(Path("options_text.json").read_text())

def get_option_text(selection: int) -> str:
    return _OPTIONS.get(str(selection), "")
```

The same pattern applies to `PriorityText` and `IncomeMax`. Benefit rates (currently `ChildBen1 = 27.05`) would also move to JSON with a top-level `tax_year` key so it's obvious when they need updating.

### Code Formatting with Ruff

The codebase has no consistent formatting — indentation, spacing, and style vary across files. [Ruff](https://github.com/astral-sh/ruff) is the recommended fix: it's a single tool that replaces both a linter (flake8, pylint) and a formatter (black), runs extremely fast, and is trivial to add to a project.

Setup:

```bash
pip install ruff
ruff check .       # lint
ruff format .      # format (black-compatible)
```

Adding a `ruff.toml` or `[tool.ruff]` section in `pyproject.toml` locks in the rules:

```toml
[tool.ruff]
line-length = 100
target-version = "py312"

[tool.ruff.lint]
select = ["E", "F", "W", "I"]   # pycodestyle, pyflakes, isort
```

Ruff can also be added to a pre-commit hook so formatting is enforced before every commit — particularly useful once Ed is committing to the repo.

### Quick wins (before next meeting)

- Add `debug1.txt`, `refresh_info.txt` to `.gitignore`
- Fix README with a description, install steps, and how to build the EXE
- Delete the commented-out duplicate `PriorityText` function
- Use git tags (`v1.1`) instead of version numbers in filenames

### Medium term

- Extract a `ClientCase` dataclass to hold all form state separately from the UI
- Replace magic index arrays with named variables or field dictionaries
- Move the if/elif text blocks to a JSON data file — rates and legal text can then be updated without touching Python
- Move hardcoded benefit rates to a config file with a comment showing the tax year they apply to
- Add unit tests for the income totalling, debt classification, and option selection logic
- Set up GitHub Actions to build and release the EXE automatically on push to `main`

### Longer term

- If EXE distribution is blocked by IT: consider a **web app** (Flask/Django) — runs in browser, no install, easier to update centrally, enables future collaboration and case history
- AI transcript → form population: this is viable; the structured form fields map well to a schema that an LLM could populate given a conversation transcript
- Case history / audit trail: currently no record of what options were presented to which client or when

### Code Splitting

#### Proposed Structure

```
debtonator/
├── main.py              # Entry: creates window, assembles tabs, starts mainloop
├── state.py             # AppState class — all shared tk variables live here
├── tabs/
│   ├── base.py          # BaseTab — shared init pattern (parent + state)
│   ├── exploration.py   # Tab 1 — household, bedroom tax, child ben
│   ├── debts.py         # Tab 2 — debt rows, totals
│   ├── assets.py        # Tab 3 — car, equity, savings
│   ├── income.py        # Tab 4 — earnings, UC, benefits, converter
│   ├── expenses.py      # Tab 5 — essentials, personals, disposable income
│   ├── outputs.py       # Tab 8 — write up / letter buttons, save/load
│   ├── income_max.py    # Tab 9 — income max checkboxes
│   ├── options.py       # Tab 10 — debt option checkboxes
│   └── maps.py          # Tab 11 — MAPS assessment
├── output/
│   ├── write_up.py      # output_write_up() — reads from state
│   └── letter.py        # care_letter_write_up() — reads from state
├── persistence.py       # SaveState / LoadState — reads/writes StateList
├── IncomeMax.py         # (unchanged — enum of income max text)
├── OptionsOutput.py     # (unchanged)
└── PriorityText.py      # (unchanged)
```

---

#### The Core Idea: AppState

The root problem is that everything uses globals. Replace them with a single shared object:

```python
# state.py
class AppState:
    def __init__(self):
        # Pre-GUI constants
        self.ChildBen1 = 27.05
        self.ChildBen2 = 17.90
        self.priority_list = [0] * 11
        self.PersonAges = list(range(20))
        self.PersonGender = list(range(20))

        # Populated by each tab on creation (set to None until then)
        self.tabone_flag = None      # set by ExplorationTab
        self.widget_flag = None      # set by IncomeTab
        self.debt_widget_flag = None # set by DebtsTab
        self.expenses_flag = None    # set by ExpensesTab
        self.income_max_flag = None  # set by IncomeMaxTab
        self.options_flag = None     # set by OptionsTab
        self.StateList = []
```

Each tab is a class that accepts the parent frame and the shared state:

```python
# tabs/base.py
class BaseTab:
    def __init__(self, parent, state):
        self.frame = parent
        self.state = state
        self._build()
```

```python
# tabs/income.py
class IncomeTab(BaseTab):
    def _build(self):
        self.state.TotalEarnings = tk.IntVar()
        self.state.widget_flag = [tk.StringVar() for _ in range(30)]
        # ... build widgets, bind traces to self._refresh_totals
    
    def _refresh_totals(self, *_):  # was refresh_totals() in defs.py
        ...
```

---

#### How Coupling is Handled

| Coupling problem | Solution |
|---|---|
| Functions in `defs.py` referencing widget globals | Become **private methods** of their tab class (`ExplorationTab._refresh_tabone`, etc.) |
| `output_write_up` reading across all tabs | Reads from `state` object passed in — no direct widget access |
| `StateList` for save/load | `AppState.StateList` populated by each tab's `register_state(state_list)` method |
| Tkinter parent references | Each tab receives its `frame` at construction — no upward references to `window` |
| Cross-tab dependencies (e.g. income affects disposable) | Tabs register callbacks on shared `state` vars via `.trace_add()` — same pattern as now |

---

#### What Moves Where

| Current location | Moves to |
|---|---|
| `convert_to_monthly()` | `IncomeTab._convert_to_monthly()` |
| `refresh_totals()` | `IncomeTab._refresh_totals()` |
| `refresh_debt_totals()` | `DebtsTab._refresh_totals()` |
| `refresh_expense_totals()` | `ExpensesTab._refresh_totals()` |
| `refresh_tabone()`, `bedroom_tax_calculator()`, `update_age_gender()`, `number_people()` | `ExplorationTab` methods |
| `output_write_up()` | `output/write_up.py` |
| `care_letter_write_up()` | `output/letter.py` |
| `SaveState()` / `LoadState()` | `persistence.py` |

---

#### Migration Strategy

Given the tight coupling, I'd recommend incremental extraction rather than a big-bang rewrite:

1. **Create `state.py`** and move the pre-GUI globals there
2. **Extract one tab at a time**, starting with `assets.py` (smallest, fewest dependencies)
3. **Extract output modules** once all tabs share state cleanly
4. **Extract persistence** last (depends on `StateList` being stable)

The existing `IncomeMax.py`, `OptionsOutput.py`, and `PriorityText.py` don't need to change — they're already cleanly decoupled.

# Actions

# Log

## 2026-05-04

- Cloned `oliveryh/debtonator` and completed full SDLC analysis — notes added above

## 2026-05-01

- Ed is going to create a GitHub account
- Ed has a list of bugs to share
- Ed is going to check if EXE files can be run at his work

## 2026-04-29

- Read through code
- Asked Ed to arrange meeting to discuss further

## 2026-04-27

- Emailed by Ed
