# rc.local
# PostgreSQL cluster settings

PGDATA=/app/postgres/data
export PGDATA
LD_LIBRARY_PATH=/usr/lib/postgresql/9.5/lib/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH
PATH=/usr/lib/postgresql/9.5/bin/:$PATH
export PATH

# end PostgreSQL  cluster settings
