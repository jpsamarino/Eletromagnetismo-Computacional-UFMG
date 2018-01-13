str_by = ""
str_bx = ""
str_z = ""
for i = 60, 600, 2  do
	mi_probdef(i, "inches", "planar", 1E-8)
	mi_analyze()
	mi_loadsolution()
	A, BX, BY = mo_getpointvalues(2,2);
	BX = abs(BX)
	BY = abs(BY)
	str_bx = str_bx .. ", " .. BX .. "\n"
	str_by = str_by .. ", " .. BY .. "\n"
	mo_selectblock(2,2)
        mo_selectblock(0.2,0.2)
	Z = mo_blockintegral(6)
	str_z = str_z .. ", " .. Z .. "\n"
end

print(str_bx)
print(str_by)
print(str_z)