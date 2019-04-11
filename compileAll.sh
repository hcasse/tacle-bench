#/bin/sh
makefile=$(pwd)/Makefile
cd bench;

cd app;

echo "DIR=\\" > $makefile

for D in *; do
    if [ -d "${D}" ]; then
	cd ${D} ;
	echo "bench/app/"${D}"\\" >>$makefile
    cp ../../../Makefile.tpl Makefile;
    cd ..;
    fi
done;
cd ../kernel;
for D in *; do
    if [ -d "${D}" ]; then
	cd ${D};
	echo "bench/kernel/"${D}"\\" >>$makefile
    cp ../../../Makefile.tpl Makefile;
    cd ..;
    fi
done;
cd ../sequential;
for D in *; do
    if [ -d "${D}" ]; then
	cd ${D};
	echo "bench/sequential/"${D}"\\" >>$makefile
    cp ../../../Makefile.tpl Makefile;
    cd ..;
    fi
done;
cd ../test;
for D in *; do
    if [ -d "${D}" ]; then
	cd ${D};
	echo "bench/test/"${D}"\\" >>$makefile
    cp ../../../Makefile.tpl Makefile;
    cd ..;
    fi
done;
cd ../..;

echo -e "\n\nall:\n\tfor dir in \$(DIR) ; do \\" >>$makefile
echo -e "\t\tcd \$\$dir;\\" >>$makefile
echo -e "\t\t\$(MAKE) all;\\" >>$makefile
echo -e "\t\tcd ../../..;\\" >>$makefile
echo -e "\tdone" >>$makefile
echo -e "clean:\n\tfor dir in \$(DIR) ; do\\">>$makefile
echo -e "\t\tcd \$\$dir;\\">>$makefile
echo -e "\t\t\$(MAKE) clean;\\">>$makefile
echo -e "\t\tcd ../../..;\\" >>$makefile
echo -e "\tdone" >>$makefile
