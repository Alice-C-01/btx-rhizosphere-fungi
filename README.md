# Urban rhizosphere fungi under BTX selective pressure — Data Analysis

Analysis code and data for the MSc thesis **“Bioprospecting of fungal communities in the urban rhizosphere: diversity and functional potential following selective enrichment with BTX"**.

- **Author:** Alice Kirilyuk Chernaya
- **Degree:** MSc in Microbiology, Universidade de Aveiro, 2026

## Study summary

Rhizosphere soil from three urban plant genera (*Euonymus*, *Rhododendron* and *Tilia*), sampled in a traffic-polluted area of Porto, Portugal, was profiled by fungal ITS metabarcoding before (baseline) and after (final) enrichment in minimal medium supplemented with benzene, toluene and p-xylene (BTX). Ten fungal isolates from the enrichment cultures were additionally screened for BTX removal by GC-FID against an abiotic control.

Baseline and final samples differ simultaneously in growth medium, plant association and incubation time, so all comparisons are exploratory and the time effect cannot be attributed to BTX alone.

## Repository structure

```text
.
├── notebooks/
│   ├── 01_Quality_test.ipynb
│   ├── 02_Alpha_diversity.ipynb
│   ├── 03_Beta_diversity.ipynb
│   ├── 04_Differential_analysis.ipynb
│   ├── 05_Degradation_analysis.ipynb
│   └── datasets/
│       ├── README.md
│       ├── ITS_table_200.xlsx
│       └── BTX_degradation.xlsx
├── install_packages.R
├── CITATION.cff
├── LICENSE
├── LICENSE-DATA
└── README.md
```

Each notebook states its question, design and method, and ends with a "Reading the results" section. Notebooks 01–04 use `ITS_table_200.xlsx`; Notebook 05 uses `BTX_degradation.xlsx`. Notebooks are independent of each other and can be run in any order.

## Reproducing the analysis

### Requirements

The analysis was conducted using:

- **R:** 4.5.0 (2025-04-11)
- **Operating system:** Debian GNU/Linux 13 (Trixie)
- **Platform:** `x86_64-pc-linux-gnu`
- **Jupyter Notebook:** 6.4.13
- **IRkernel:** 1.3.2

### Installation and execution

1. Install R 4.5.0.
2. Install the required R packages by running the following command from the repository root:

   ```r
   source("install_packages.R")
   ```

3. Configure Jupyter Notebook with the R kernel, IRkernel
4. Open a notebook and run it from the `notebooks/` directory, because data paths are relative to that directory (`datasets/...`).

### Reproducibility notes

- `01_Quality_test.ipynb`: the `rarecurve()` step may take some time to complete.
- `03_Beta_diversity.ipynb` sets `set.seed(125)` to support reproducibility of permutation-based analyses.
- Package versions listed below were recorded from the notebook sessions. Results may vary if the analysis is run in a different software environment.
- To inspect the current R environment and package versions, run `sessionInfo()` at the end of a notebook session.

### R packages

The analyses use the following packages:

| Source | Packages |
|---|---|
| Bioconductor | `phyloseq`, `DESeq2` |
| CRAN | `vegan`, `openxlsx`, `dplyr`, `tidyr`, `tibble`, `ggplot2`, `ggrepel`, `ggdendro`, `UpSetR`, `dunn.test`, `scales` |
| GitHub | `pairwiseAdonis` (`pmartinezarbizu/pairwiseAdonis`) |

Additional packages are installed as dependencies.

### Recorded package versions


| Package | Version |
|---|---|
| `phyloseq` | 1.54.2 |
| `DESeq2` | 1.50.2 |
| `vegan` | 2.7-6 |
| `pairwiseAdonis` | 0.4.1 |
| `UpSetR` | 1.4.1 |
| `ggdendro` | 0.2.0 |
| `ggrepel` | 0.9.8 |
| `openxlsx` | 4.2.9 |
| `dplyr` | 1.2.1 |
| `tidyr` | 1.3.2 |
| `dunn.test` | 1.4.2 |
| `tibble` | 3.3.1 |
| `ggplot2` | 4.0.3 |
| `permute` | 0.9-10 |
| `cluster` | 2.1.8.3 |
| `scales` | 1.4.0 |

These versions describe the recorded analysis environment, they are not necessarily the latest available package versions.

## Data

The `notebooks/datasets/` directory contains the input datasets used by the analysis notebooks.

Data dictionary and sample-naming scheme: [`notebooks/datasets/README.md`](notebooks/datasets/README.md).

Please consult the data documentation for descriptions of the included files and their contents.

## Citation

If you use this code or data, please cite this repository using the metadata in [`CITATION.cff`](CITATION.cff). GitHub provides a **"Cite this repository"** option when citation metadata is available.

Please also cite the associated MSc thesis when using the analyses or results.

## Licence

**Code:** The R notebooks and analysis code are released under the [MIT License](LICENSE).

**Data:** Research datasets in `notebooks/datasets/` are released under the [Creative Commons Attribution 4.0 International (CC BY 4.0) licence](https://creativecommons.org/licenses/by/4.0/), as specified in [`LICENSE-DATA`](LICENSE-DATA), where the necessary rights and permissions allow.

