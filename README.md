# Gene Expression Analysis in R

A simple R-based gene expression analysis task comparing control and treated samples.

The script demonstrates core R programming concepts used in biological and gene expression data analysis, including named vectors, vectorized calculations, matrices, conditional subsetting, ifelse(), and factors.

---

## Project Overview

This project analyzes gene expression values for six genes in two conditions:

- Control
- Treated

The analysis calculates fold change between treated and control samples and classifies each gene based on its expression change.

---

## Analysis Workflow

The script performs the following steps:

1. Defines gene expression data for control and treated samples.
2. Creates named vectors using gene names.
3. Calculates fold change using vector arithmetic.
4. Identifies genes with fold change greater than 1.5.
5. Creates a gene × condition expression matrix.
6. Calculates mean expression for each gene using rowMeans().
7. Classifies genes as:
   - upregulated
   - downregulated
   - stable
8. Converts the classification results into a factor with predefined levels.
9. Saves the final analysis results to results.txt.

---

## Classification Rules

| Fold Change | Classification |
|-------------|----------------|
| > 1.2 | upregulated |
| < 0.8 | downregulated |
| 0.8 – 1.2 | stable |

---

## Project Structure

R-Gene-Expression-Analysis/
#gene_analysis.R
Main R script containing the complete gene expression analysis.
#results.txt
Generated output containing:
Gene name
Control expression
Treated expression
Fold change
Mean expression
Classification
#README.md
Project documentation and instructions for running the analysis.
## Requirements
R
RStudio (recommended)
No external R packages are required.
## How to Run
Clone or download this repository.
Open gene_analysis.R in RStudio.
Run the script using Source.
The results will be printed in the R console.
A results.txt file will be generated in the project directory.
## Example Results

| Gene | Control | Treated | Fold Change | Classification |
|---|---:|---:|---:|---|
| BRCA1 | 5.2 | 8.9 | 1.712 | upregulated |
| TP53 | 7.8 | 7.6 | 0.974 | stable |
| EGFR | 3.1 | 6.7 | 2.161 | upregulated |
| MYC | 9.4 | 12.1 | 1.287 | upregulated |
| PTEN | 6.0 | 2.3 | 0.383 | downregulated |
| KRAS | 4.5 | 9.8 | 2.178 | upregulated |
## R Concepts Demonstrated
Vectors
Named vectors
Vector arithmetic
Conditional subsetting
Matrices
dimnames()
rowMeans()
ifelse()
Factors
Data frames
File output with write.table()
## Learning Objective
The goal of this task is to practice vectorized data manipulation and basic data structures in R through a biological gene expression example.