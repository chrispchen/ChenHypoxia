## scRNA-seq preprocessing

#### Parse Bioscience's Split Pipeline
Multiple `SplitPipeSub.sh` bash scripts were run for each "sublibrary", and then combined using `SplitPipeCombine.sh`

Running `SplitPipeSub.sh` requires a sample spreadsheet provided by Parse Biosciences, which includes sample names, library distributions, and cell concentrations. 

For full documentation and the code to the Parse Bioscience's Split Pipeline, contact Parse Biosciences
