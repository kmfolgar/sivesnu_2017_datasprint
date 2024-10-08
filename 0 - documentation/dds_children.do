use "D:\DataSprint\sivesnu_2017_datasprint-main\2 - stata\sivesnu_gt17_escolar_publico.dta"

gen dds_1=1 if alim_grano=="01-Si" 
replace dds_1=1 if alim_tuberculo=="01-Si"
replace dds_1=0 if dds_1==.
gen dds_2=1 if alim_leguminosa=="01-Si"
replace dds_2=1 if alim_nuez=="01-Si"
replace dds_2=0 if dds_2==.
gen dds_3=1 if alim_prod_lacteo=="01-Si"
replace dds_3=1 if dds_3==.
gen dds_4=1 if alim_viscera=="01-Si"
replace dds_4=0 if dds_4==.
gen dds_5=1 if alim_huevo=="01-Si"
replace dds_5=0 if dds_5==.
gen dds_6=1 if alim_carne=="01-Si"
replace dds_6=0 if dds_6==.
gen dds_7=1 if alim_fruta_anaranjada=="01-Si"
replace dds_7=0 if dds_7==.
gen dds_8=1 if alim_verdura_amarilla=="01-Si"
replace dds_8=0 if dds_8==.
gen dds_9=1 if alim_otra_v=="01-Si"
replace dds_9=1 if alim_otra_f=="01-Si"
replace dds_9=0 if dds_9==.

gen dds_child= dds_1+dds_2+dds_3+dds_4+dds_5+dds_6+dds_7+dds_8+dds_9