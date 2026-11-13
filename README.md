
# RSM_assignment

<div align="center">
  <img src="img/UT_Logo_0072_Black_EN.png" alt="University of Twente logo">
</div>

## Overview

This project demonstrates reproducible research software management using R, following the University of Twente Research Software Guidelines.

It contains a simple simulation of downstream CT investigations following AI-assisted chest radiography, relevant to healthcare research and diagnostic modelling.

The analysis uses synthetic data for 200 patients. All probabilities are illustrative and do not represent actual clinical evidence.

## Project Structure

```text
RSM_assignment/
├── code/                 # R analysis script
│   └── analysis.R
├── data/                 # Data directory
├── docs/                 # Documentation
├── img/                  # Images
├── outputs/              # Generated figures
│   └── followup_CT.png
├── tests/                # Future code tests
├── renv/                 # R environment configuration
├── renv.lock             # R package dependencies
├── RSM_assignment.Rproj  # RStudio project file
├── CITATION.cff          # Software citation metadata
├── LICENSE               # MIT license
└── README.md             # Project documentation
```

## Installation and Requirements

- R (developed using R 4.6.1)
- RStudio (recommended)
- `renv` package for dependency management

The analysis uses base R and does not require additional statistical packages.

## Reproducing the Analysis

1. Clone or download the repository from GitHub.
2. Open `RSM_assignment.Rproj` in RStudio.
3. Install `renv` if necessary:

   `install.packages("renv")`

4. Restore the project environment:

   `renv::restore()`

5. Run the analysis:

   `source("code/analysis.R")`

The script generates a bar chart comparing simulated follow-up CT rates between patients with and without additional AI findings.

The figure is saved to `outputs/followup_CT.png`.

The simulation uses `set.seed(123)` to ensure consistent random-number generation. The `renv.lock` file records the R environment for reproducibility.

## License

This software is distributed under the [MIT License](LICENSE).

## Copyright

Copyright © 2026. See the LICENSE file for copyright-holder information.

## Citation

Software citation information is provided in [CITATION.cff](CITATION.cff).

A persistent DOI may be added following a future archived release through Zenodo.

## Acknowledgements

- University of Twente Research Software Management training
- [UT Research Software Policy](https://doi.org/10.5281/zenodo.15807424)
- [TDCC-NES Research Software Best Practices](https://github.com/SS-NES)