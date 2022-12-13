#!/bin/bash

cd /user_data/mrj
THREADS=5

MAGS=/../projects/glomicave/HQMAG_database/symlinks

### Module load 
BAKTA=Bakta/1.5.1-foss-2020b 
BAKTA_DB=/space/databases/bakta/20221121/db

module load $BAKTA

### Download and update database
#bakta_db download --output /user_data/mrj/commamox2022/bakta/
#bakta_db update --db <existing-db-path> [--tmp-dir <tmp-directory>]

### Test run BAKTA
bakta --db $BAKTA_DB --output commamox2022/20221207_bakta_g__Nitrosomonas/ --genus g__Nitrosomonas --threads $THREADS "$MAGS"/glom_0149.fa


mv commamox2022/20221207_bakta_g__Nitrosomonas/. commamox2022/20221207_bakta_g__Nitrosomonas/glom_0149.fa