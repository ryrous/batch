:: Seize FSMO Roles
ntdsutil "roles" "connections" "connect to server Old-DC" "q" "seize schema master" "seize naming master" "seize PDC" "seize RID master" "seize infrastructure master" q q
