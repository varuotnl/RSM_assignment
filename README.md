
# RSM_assignment

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.24194475.svg)](https://doi.org/10.5281/zenodo.24194475)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![R](https://img.shields.io/badge/Language-R-blue.svg)](https://www.r-project.org/)

## Overview

This project demonstrates reproducible research software management using R, following the University of Twente Research Software Guidelines.

It contains a simple simulation of downstream CT investigations following AI-assisted chest radiography, relevant to healthcare research and diagnostic modelling.

The analysis uses synthetic data for 200 patients. All probabilities are illustrative and do not represent actual clinical evidence.

## Research Context

This training project is inspired by ongoing PhD research on the evaluation of multi-disease diagnostic tests (MDTs), particularly artificial intelligence (AI) systems in chest radiography.

The research investigates how additional findings identified by AI-assisted diagnostic tests may lead to downstream diagnostic investigations, healthcare resource use, and potential consequences for patients and healthcare systems.

This project illustrates one simplified pathway: the probability of follow-up CT investigations associated with additional AI findings on chest radiographs.

The simulation is intended solely for educational purposes and to demonstrate reproducible research software management. It does not use real patient data or represent validated clinical estimates or findings from the PhD research.

## Input Data and Outputs

### Inputs

The analysis uses synthetic data generated directly within code/analysis.R. No external dataset is required.

The simulation uses the following illustrative assumptions:

Sample size: 200 simulated patients.

Probability of an additional AI finding: 30%.

Probability of follow-up CT when an additional AI finding is present: 40%.

Probability of follow-up CT when an additional AI finding is absent: 10%.

Random seed: 123, ensuring repeatable random number generation under the same R environment.

These probabilities are hypothetical and are not derived from clinical evidence.

### Analysis

The R script:

Generates a synthetic dataset containing patient identifiers and additional AI finding status.

Simulates whether each patient undergoes a follow-up CT investigation.

Calculates the proportion of patients receiving follow-up CT investigations according to AI finding status.

Produces a bar chart comparing the two groups.

### Outputs

The analysis generates the following file:

outputs/followup_CT.png — a bar chart showing the simulated percentage of patients receiving follow-up CT investigations, grouped by the presence or absence of an additional AI finding.

The simulated patient-level dataset is created in memory during execution and is not currently saved as a separate file.

### Reproducibility

The analysis uses base R and a fixed random seed (set.seed(123)). The project includes renv.lock and the associated renv configuration files to support reproducibility of the software environment.

Instructions for restoring the environment and running the analysis are provided in the Reproducing the Analysis section below.

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