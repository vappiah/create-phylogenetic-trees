# phylogenetic-trees

#download github repository

git clone https://github.com/vappiah/create-phylogenetic-trees

#cd to the directory

cd phylogenetic-trees

#add execution rights to the scripts

chmod +x *.{sh,py}

#download and set up analysis environment

./download_tools.sh


#test installation. You should have the version number and path to the followiing tools and libraries
#muscle,phyml, python(matplotlib,biopython,pydot,networkx)

./test_tools.sh

#its time to start analysis

#confirm that you have your sequences 

ls sequences

#check how many sequences are there

ls sequences/*.fasta | wc -l

#combine all the fasta files to a single file. a file called allseqs.fasta will be created and some the sequence in it will be 
#displayed

./combine_fasta.sh sequences

#multiple sequence alignment with MUSCLE. this proceeds in two stages. Alignment and refining of alignment. Two file will be 
#generated the initial alignment file (allseqs.msa.fasa) and the refined (allseqs.refined.phylip).

./multiple_align.sh allseqs.fasta


#we now use PHYML to generate the phylogenetic-tree. Input file will be allseqs.refined.phylip. 
#two files will be gerated. the maximlan likelihood tree(phyml_tree.txt) in newick format and model parameters (phyml_stats.txt)

./generate_phylo.sh allseqs.refined.phylip



#we now use python to draw the phylogenetic tree. Image will be saved in two formats (Phylo.jpg and Phylo.svg)

#activate the python environment

source phylo/bin/activate

#run the python script to generate phylo tree

python3 draw_phylo.py phyml_tree.txt

#you can view the image of three. congratulations for performing a phylogenetic analysis. cheers!!!!!!!
