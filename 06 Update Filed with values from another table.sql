
update KeyValue
set CodeAdminUNI = T2.CodeAdminUNI
from [ums_test].dbo.KeyValue  as T2
  where KeyValue.idKeyValue = T2.idKeyValue
      