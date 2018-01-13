str = ""
for i = 1, 360, 1 do
	mi_selectgroup(1)
	mi_moverotate(0,0,1,4)
	mi_analyze()
	mi_loadsolution()

	mo_selectblock(0,0);
	mo_selectblock(40*cos(rad(i)), 40*sin(rad(i)))
	mo_selectblock(40*cos(rad(i+180)), 40*sin(rad(i+180)))
	str = str .. ", " .. mo_blockintegral(22) .. "\n"
end
print(str)
