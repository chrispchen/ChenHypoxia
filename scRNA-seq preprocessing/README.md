## scRNA-seq preprocessing

#### Parse Bioscience's Split Pipeline
* Multiple [SplitPipeSub.sh](SplitPipeSub.sh) bash scripts were run for each "sublibrary", and then combined using [SplitPipeCombine.sh](SplitPipeCombine.sh)

* Running [SplitPipeSub.sh](SplitPipeSub.sh) requires a sample spreadsheet provided by Parse Biosciences, which includes sample names, library distributions, and cell concentrations. 

For full documentation and the code to the Parse Bioscience's Split Pipeline, contact Parse Biosciences

* [PreprocessingAndQualityFiltering.ipynb](PreprocessingAndQualityFiltering.ipynb): Google colab notebook, importing all_genes.csv, cell_metadata.csv, and count_matrix.mtx from SplitPipe into Scanpy. Basic preprocessing and quality filtering conducted here.
