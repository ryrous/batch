:: Get running services and associated accounts
wmic service where started=true get  name, startname