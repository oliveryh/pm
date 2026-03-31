---
tags:
  - task/resume
created: 2026-03-29
status: in-progress
---

# Energy Bill Update — Resume Task

**Goal:** Add 4 new Octopus Energy bills to the Energy Usage spreadsheet.
**Spreadsheet:** https://docs.google.com/spreadsheets/d/11rXIsXR8c64V3OC8dRgzzKt3my7OKuwk4ddnfQCYMhU/edit

---

## Step 1 — Read the bill PDFs

The 4 Octopus Energy bills are in `~/Downloads/`. Read each with the Read tool to extract all figures.

| Filename | Ref |
|---|---|
| `A-17C5F70C-384788480-1.pdf` | 384788480 |
| `A-17C5F70C-385226929-1.pdf` | 385226929 |
| `A-17C5F70C-394068807-1 (1).pdf` | 394068807 |
| `A-17C5F70C-401499976-1.pdf` | 401499976 |

From each bill, extract: start/end date, days, elec kWh, elec unit rate (p/kWh), elec standing charge (p/day), elec meter reading, gas m³, gas kWh, gas unit rate (p/kWh), gas standing charge (p/day), gas meter reading, calorific value, total charges.

> The 2 other PDFs downloaded today (`40199ff0-...-1.pdf` and `40199ff0-...-2.pdf`) are Trainline tickets — ignore them.

---

## Step 2 — Understand the spreadsheet

**Sheet:** `Bill Details` (first sheet, sheetId: 0)
**Last row with data:** row 57 (period: 8/11/2025 – 2/12/2025)
**Next empty row:** row 58 — start appending here

End readings on row 57 (= start readings for Bill 1):
- Electricity: **84863**
- Gas: **12152 m³**

### Column mapping

| Col | Header | Formula / Notes |
|-----|--------|-----------------|
| A | Start of Period | Date format: `D/M/YYYY` |
| B | End of Period | |
| C | Tariff | Use `Flexible Octopus` |
| D | Days | |
| E | Electricity Reading | End meter reading (kWh) |
| F | Electricity Usage (kWh) | |
| G | Usage avg. | F/D |
| H | Electricity Unit Rate (p/kWh) | |
| I | Energy Price Guarantee | `0` (no EPG on current tariff) |
| J | Electricity Standing Charge (p/day) | |
| K | Tariff Charge | F×H/100 |
| L | Energy Price Guarantee | `0` |
| M | Standing Charge | D×J/100 |
| N | Subtotal before VAT | K+L+M |
| O | Total Electricity Charges | N×1.05 |
| P | Gas Reading | End meter reading (m³) |
| Q | Gas Usage (m³) | |
| R | Gas Usage avg. | Q/D |
| S | Calorific Value | From bill |
| T | Gas (kWh) | Q×S×1.02264/3.6 |
| U | Gas (kWh/day) | T/D |
| V | Gas Unit Rate (p/kWh) | |
| W | Energy Price Guarantee | `0` |
| X | Gas Standing Charge (p/day) | |
| Y | Tariff (£) | T×V/100 |
| Z | (empty) | |
| AA | Standing Charge (£) | D×X/100 |
| AB | Total Charge (Gas) | Y+AA |
| AC | Price incl. VAT | AB×1.05 |
| AD | Tariff (Elec avg. period) | K/D |
| AE | Tariff (Gas avg. period) | Y/D |
| AF | Electricity Unit Charge % | |
| AG | Gas Unit Charge % | |

---

## Step 3 — Write rows with gws CLI

Auth is already set up with sheets scope (`oyerburyhodgson@gmail.com`). Verify with `gws auth status`.

> [!warning] zsh gotcha
> Use **double quotes** for ranges containing `!` — single quotes cause zsh history expansion errors:
> ```bash
> # CORRECT
> gws sheets +read --spreadsheet 11rXIsXR8c64V3OC8dRgzzKt3my7OKuwk4ddnfQCYMhU --range "Bill Details!A1:AG1"
> ```

To append rows:
```bash
gws sheets spreadsheets values append \
  --params '{"spreadsheetId": "11rXIsXR8c64V3OC8dRgzzKt3my7OKuwk4ddnfQCYMhU", "range": "Bill Details!A58", "valueInputOption": "USER_ENTERED"}' \
  --json '{"values": [[...row data...]]}'
```

Append all 4 bills in one call by passing all 4 arrays inside `"values"`.

---

## Step 4 — Done

Once rows are added, verify by reading back rows 58–61 and confirming totals match the PDFs. Then delete or archive this note.
