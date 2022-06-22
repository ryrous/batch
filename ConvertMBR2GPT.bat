:: enter DISKPART
DISKPART
:: select DISK 0
select disk 0
:: clean all on DISK 0
clean all
:: convert MBR to GPT
convert GPT