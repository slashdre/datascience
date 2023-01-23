#Create alignment for the the Bp bulk sequence using kallisto. 
#this script will perform alignment of all files in the rawReads folder. 
#a new folder is created for each file and the abundance and json files are placed in the alignedReads folder

for infile in rawReads/*.fq.gz
do
outfile=$"(basename $infile )"_aligned
kallisto quant -i Homo_sapiens.GRCh38.cdna.all.index -o AlignedReads/$outfile -t 8 --single -l 250 -s 30 $infile
done
