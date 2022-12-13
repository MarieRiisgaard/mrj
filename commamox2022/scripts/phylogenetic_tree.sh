#!/bin/bash

cd /user_data/mrj
THREADS=5
SCRIPTS=commamox2022/scripts

# Input: Fasta seq of those in interest


# Path
data_from_r=commamox2022/data/from_r/
output=/user_data/mrj/commamox2022/exploratory_results/alignments_and_trees

# Packages
MUSCLE=MUSCLE/5.0.1428-foss-2020b
FASTTREE=FastTree/2.1.11-foss-2020b
module load $FASTTREE
module load $MUSCLE

muscle -align "$data_from_r"/out.fasta -out "$output"/aligned_sequences.aln





