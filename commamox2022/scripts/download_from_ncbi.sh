
data=/user_data/mrj/commamox2022/data

# 
awk 'BEGIN{FS=OFS=","} {print $1 "\t" $2}' "$data"/genomes_from_NCBI/genomes_in_gtdb_g__Nitrosomonas/20221209_g__Nitrosomonas_NCBI_accession_no.csv | sed 's/ /_/g' | tail -n +2 > "$data"/genomes_from_NCBI/genomes_in_gtdb_g__Nitrosomonas/20221209_g__Nitrosomonas_NCBI_done.txt


FILENAME="$data"/genomes_from_NCBI/genomes_in_gtdb_g__Nitrosomonas/20221209_g__Nitrosomonas_NCBI_done.txt
LINES=$(cat $FILENAME)


## Need package to download genomes from NCBI 
while read line;do
  accession=$(echo $line|awk '{print $1}')
  species_name=$(echo $line|awk '{print $2}')
 
  datasets download genome accession $accession --filename "XXX"

done < $FILENAME



