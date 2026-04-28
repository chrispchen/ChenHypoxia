## Single cell RNA-seq analysis

- [cNMF.ipynb](cNMF.ipynb): Google colab notebook, classification of identity and activity gene expression programs using consensus non-negative matrix factorization (cNMF). This notebook heavily relies on code from Dylan Kotliar's [code ocean](https://codeocean.com/capsule/6314882/tree/v1), [github](https://github.com/dylkot/cNMF), and manuscript:
    >Dylan Kotliar, Adrian Veres, M Aurel Nagy, Shervin Tabrizi, Eran Hodis, Douglas A Melton, Pardis C Sabeti (2019) Identifying >gene expression programs of cell-type identity and cellular activity with single-cell RNA-Seq eLife 8:e43803
    >[https://doi.org/10.7554/eLife.43803](https://doi.org/10.7554/eLife.43803)

- [Psuedobulk_DifferentialGeneExpression.ipynb](Psuedobulk_DifferentialGeneExpression.ipynb): Google colab notebook, performing psuedobulk differential gene expression analysis using [PyDEseq2](https://github.com/scverse/PyDESeq2) on embyros at normoxia 6 hpf and hypoxia 2 hrs.
  
- [CellTypeAnnotations.ipynb](CellTypeAnnotations.ipynb): Google colab notebook, cell type annotation method. In brief 1) normoxic cells were subsetted and subjected to Leiden clustering, 2) clusters were annotated by a combination of label transfer using Symphony from ZMAP and marker gene expression, 3) hypoxic and reoxygenated cells were annotated using a CellTypist model trained on the normoxic cell annotations.
    > CellTypist: Dominguez Conde et al., Cross-tissue immune cell analysis reveals tissue-specific features in humans. Science 376, eabl5197 (2022). [Link](https://www.science.org/doi/10.1126/science.abl5197)
    > 
    > Symphony: Kang, J.B., Nathan, A., Weinand, K. et al. Efficient and precise single-cell reference atlas mapping with Symphony. Nat Commun 12, 5890 (2021). [Link](https://rdcu.be/ffJTG)
    > 
    > ZMAP: Aponte-Santiago, N. A., Su, Y., & Wagner, D. E. (2026). ZMAP: A single-cell meta-atlas of zebrafish embryonic development reveals a consensus hierarchy of cell identities. In bioRxivorg (p. 2026.03.23.713599). bioRxiv. [Link](https://doi.org/10.64898/2026.03.23.713599)
  
 - [HarmonizedUMAPsandMarkerGenes.ipynb](HarmonizedUMAPsandMarkerGenes.ipynb): Google colab notebook, consisting of harmonization of cells from different conditions (normoxia, hypoxia, and reoxy), then plotting UMAPs, cell type distributions, and marker gene expression.
    > Harmony: Korsunsky, I., Millard, N., Fan, J. et al. Fast, sensitive and accurate integration of single-cell data with Harmony. Nat Methods 16, 1289–1296 (2019). [Link](https://doi.org/10.1038/s41592-019-0619-0)
