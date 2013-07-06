lParameters loSection

local lcDatabase, lcTableView, laFields[1,1]

lcTableView = loSection.table
select (lcTableView)
=afields(laFields)

use in (lcTableView)

create table &(tmpname()) temporary ;
	from array laFields
	
use (dbf()) alias (lcTableView)

//loSection.database = database()

return
	
