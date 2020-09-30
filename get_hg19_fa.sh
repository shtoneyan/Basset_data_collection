#!/bin/sh

# download hg19
wget ftp://hgdownload.cse.ucsc.edu/goldenPath/hg19/bigZips/chromFa.tar.gz -O chromFa.tar.gz


# un-tar
tar -xzvf chromFa.tar.gz

# cat
cat chr?.fa chr??.fa > hg19.fa


# clean up
rm chromFa.tar.gz
for chrom_fa in chr*.fa; do
   rm chrom_fa

done
