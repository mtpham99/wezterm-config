-- Util Functions
local utils = {}

function utils.merge_tables(tbl1, tbl2)
	for k, v in pairs(tbl2) do
		if (type(v) == 'table') and (type(tbl1[k] or false) == 'table') then
			utils.merge_tables(tbl1[k], tbl2[k])
		else
			tbl1[k] = v
		end
	end
	return tbl1
end

return utils
