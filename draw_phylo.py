#!/usr/bin/env python3

from Bio import Phylo
import sys
import pylab
import networkx

#import matplotlib

file_=sys.argv[1]

tree=Phylo.read(file_,'newick')
Phylo.draw(tree,do_show=False)
#plt.savefig('Phylo.jpg')
pylab.savefig('Phylo.jpg')

print("Phylogenetic tree generated and saved Phylo.jpg")
