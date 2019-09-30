# seq2HLA_workflow

## Setting up the seq2HLA-workflow environment using Conda: 

```bash
conda create -n Seq2HLA python=2.7
conda activate Seq2HLA

conda install numpy
conda install biopython
conda install r
conda install parallel
#install Bowtie1, not version 2
conda install bowtie

conda deactivate
```

## Execute the pipeline (RNA-Seq data are expected to be in a folder called *raw_data*): 

```bash
bash parallel_seq2HLA_flow.sh
```

HLA tpying is performed using [seq2HLA](https://genomemedicine.biomedcentral.com/articles/10.1186/gm403) and the source code can be [downloaded](https://github.com/TRON-Bioinformatics/seq2HLA.git) from GitHub. 
