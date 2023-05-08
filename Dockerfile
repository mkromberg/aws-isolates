FROM dyalog/dyalog:latest
ADD taxmodel.dws      /apps/taxmodel/taxmodel.dws
ADD isolate.dws       /apps/taxmodel/isolate.dws
ADD gross_incomes.dcf /apps/taxmodel/gross_incomes.dcf 
ENV MAXWS=2G
ENV isolate=isolate
ENV Port=7052
ENV AutoShut=1
ENV AllowRemote="IP=83.89.250.137"
ENV LOAD="/apps/taxmodel/isolate.dws"