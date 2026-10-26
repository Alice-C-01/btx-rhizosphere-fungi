# Datasets

Both files are read directly by the notebooks (paths are relative to `notebooks/`).

## `ITS_table_200.xlsx` — ITS metabarcoding

Used by notebooks 01–04. Fungal ITS1F/ITS2 amplicon data for 18 rhizosphere samples.

| Sheet | Content |
|---|---|
| `ITS-table` | ASV count table: 7,275 ASVs (rows, hashed ASV IDs in column `#ASV`) × 18 samples (columns). |
| `taxonomy` | One row per ASV (`Feature ID`): Kingdom to Species plus the UNITE Species Hypothesis ID (`sh__…`). Unassigned ranks are empty. |
| `metadata` | `Sample`, `Plant_genus`, `Time_point` for each sample. |

**Sample naming** (e.g. `EF1`): 1st letter = plant genus (**E**uonymus, **R**hododendron, **T**ilia), 2nd letter = time point (**B**aseline, **F**inal, after enrichment in BTX-supplemented minimal medium), 3rd character = replicate (1–3).

Design: 3 plant genera × 2 time points × 3 replicates = 18 samples. Counts are stored as text in the spreadsheet and coerced to numeric by the notebooks.

## `BTX_degradation.xlsx` — GC-FID BTX removal assay

Used by notebook 05. Ten fungal isolates plus a control (`CN`), 3 replicates each, measured at the start (`t0`) and end (`tf`) of the assay.

| Sheet | Content |
|---|---|
| `BTX` | Per replicate: GC-FID peak areas of benzene, toluene and xylene, the internal standard (`ISTD`), peak-area/ISTD ratios, and concentrations in mg/L (calculated in the sheet from the calibration curves by formula). |
| `Folha1` | ("Sheet1") Summary of percent degradation and coefficient of variation per sample. Not read by the notebooks. |
| `curves` | Empty placeholder sheet. |

Isolate IDs: `CN` (control), SA1.3, SA1.4, SA2.1, SA2.6, SA2.7, SA3.3, SA3.4, SA3.5, SA3.7, SZ2.1.
