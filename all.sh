#!/bin/bash

git clone https://github.com/vappiah/phylogenetic-trees
cd phylogenetic-trees
chmod +x *.{sh,py}
./download_tools.sh
./test_tools.sh
./combine_fasta.sh sequences
./multiple_align.sh allseqs.fasta
./generate_phylo.sh allseqs.refined.phylip
source phylo/bin/activate
python3 draw_phylo.py phyml_tree.txt 

deactivate
