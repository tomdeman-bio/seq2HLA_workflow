# seq2HLA_workflow

## Setting up the seq2HLA-workflow environment manually using Conda: 

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

**or using Conda and a yml file**

```bash
conda env create -f Seq2HLA_environment.yml
```

**seq2HLA is the engine of this whole workflow:<br>**
HLA tpying is performed using [seq2HLA](https://genomemedicine.biomedcentral.com/articles/10.1186/gm403) and the source code can be [downloaded](https://github.com/TRON-Bioinformatics/seq2HLA.git) from GitHub. 


## Finally, execute the pipeline (RNA-Seq data are expected to be in a folder called *raw_data*): 

```bash
bash parallel_seq2HLA_flow.sh
```

## Cool and interesting use-case for HLA typing:

* [Austin Nguyen et al. Journal of Virology. 2020](https://jvi.asm.org/content/early/2020/04/16/JVI.00510-20)
  * Nguyen *et al*. examined how HLA genetic variation affects the cellular immune response to proteins from human-infecting coronaviruses. They showed that HLA-B\*46:01 had the fewest predicted binding sites to the SARS-COV-2 virus, and HLA-B\*15:03 displayed the greatest capacity to present highly-conserved SARS-COV-2 proteins to human immune cells
