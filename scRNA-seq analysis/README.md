## Single cell RNA-seq analysis
- [CellTypeAnnotations.ipynb](CellTypeAnnotations.ipynb): Google colab notebook, cell type annotation method. In brief 1) normoxic cells were subsetted and subjected to Leiden clustering, 2) clusters were annotated by a combination of label transfer using [Symphony](https://rdcu.be/ffJTG) from [ZMAP](https://doi.org/10.64898/2026.03.23.713599) and marker gene expression, 3) hypoxic and reoxygenated cells were annotated using a [CellTypist](https://www.science.org/doi/10.1126/science.abl5197) model trained on the normoxic cell annotations.
  
 - [HarmonizedUMAPsandMarkerGenes.ipynb](HarmonizedUMAPsandMarkerGenes.ipynb): Google colab notebook, integration using [Harmony](https://doi.org/10.1038/s41592-019-0619-0) of cells from different conditions (normoxia, hypoxia, and reoxy), then plotting UMAPs, cell type distributions, and marker gene expression.

- [cNMF.ipynb](cNMF.ipynb): Google colab notebook, classification of identity and activity gene expression programs using consensus non-negative matrix factorization (cNMF). This notebook heavily relies on code from Dylan Kotliar's [code ocean](https://codeocean.com/capsule/6314882/tree/v1), [github](https://github.com/dylkot/cNMF), and [manuscript](https://doi.org/10.7554/eLife.43803)

- [Pseudobulk_DifferentialGeneExpression.ipynb](Pseudobulk_DifferentialGeneExpression.ipynb): Google colab notebook, performing psuedobulk differential gene expression analysis using [PyDESeq2](https://github.com/scverse/PyDESeq2) on embyros at normoxia 6 hpf and hypoxia 2 hrs.

- [EuclideanPrincipalComponentDistances.ipynb](EuclideanPrincipalComponentDistances.ipynb): Google colab notebook, calculating and graphing Euclidean Principal Component distances between cell types across samples and conditions using [Pertpy](https://doi.org/10.1038/s41592-025-02909-7)

- [ComparecNMFwithPyDESeq2.ipynb](ComparecNMFwithPyDESeq2.ipynb): Google colab notebook, brief comparison of the overlap between [cNMF](https://doi.org/10.7554/eLife.43803) GEP 5 (hypoxia) and differential gene expression across clusters from [PyDESeq2](https://github.com/scverse/PyDESeq2)
