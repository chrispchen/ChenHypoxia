## Nano3p-seq preprocessing
These scripts convert raw pod5 files to a dataframe containing each read aligned 
to a gene, its estimated polyT tail length, and its composition.

- [dorado.sh](dorado.sh): basecalling and demultiplexing (using Oxford Nanopore's Dorado)
- [align.sh](align.sh): alignment to a reference genome
- [annotate.sh](annotate.sh): annotate alternative transcript ends
- [quant.sh](quant.sh): quantify reads per transcript
- [estimate.sh](estimate.sh): estimate polyT tail length and composition
- [PreparePolyATailLengthTable.ipynb](PreparePolyATailLengthTable.ipynb): imports PolyTailor bam into python environment, annotates, and merges libraries.

The polyTailor scripts are from the [Novoa Lab's GitHub](https://github.com/novoalab/polyTailor) and their associated manuscript:

Begik, O., Pryszcz, L.P., Niazi, A.M. et al. Nano3P-seq: charting the coding and 
noncoding transcriptome at single-molecule resolution. *Nat Protoc* 20, 3607–3628 (2025). 
https://doi.org/10.1038/s41596-025-01205-0
