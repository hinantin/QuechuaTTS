deb:
	mkdir cus_quz_gui_hts_v1.0-1
	mkdir cus_quz_gui_hts_v1.0-1/usr
	mkdir cus_quz_gui_hts_v1.0-1/usr/share
	mkdir cus_quz_gui_hts_v1.0-1/usr/share/festival
	mkdir cus_quz_gui_hts_v1.0-1/usr/share/festival/voices
	mkdir cus_quz_gui_hts_v1.0-1/usr/share/festival/voices/quz
	cp -a /home/richard/Documents/QuechuaTTS/festival/quz/cus_quz_gui_hts cus_quz_gui_hts_v1.0-1/usr/share/festival/voices/quz
	mkdir cus_quz_gui_hts_v1.0-1/DEBIAN
	cp cus_quz_gui_hts_control cus_quz_gui_hts_v1.0-1/DEBIAN/control
	dpkg-deb --build cus_quz_gui_hts_v1.0-1
	# Adding cus_quz_gui_clunits
	mkdir cus_quz_gui_clunits_v1.0-1
	mkdir cus_quz_gui_clunits_v1.0-1/usr
	mkdir cus_quz_gui_clunits_v1.0-1/usr/share
	mkdir cus_quz_gui_clunits_v1.0-1/usr/share/festival
	mkdir cus_quz_gui_clunits_v1.0-1/usr/share/festival/voices
	mkdir cus_quz_gui_clunits_v1.0-1/usr/share/festival/voices/quz
	cp -a /home/richard/Documents/QuechuaTTS/festival/quz/cus_quz_gui_clunits cus_quz_gui_clunits_v1.0-1/usr/share/festival/voices/quz
	mkdir cus_quz_gui_clunits_v1.0-1/DEBIAN
	cp cus_quz_gui_clunits_control cus_quz_gui_clunits_v1.0-1/DEBIAN/control
	dpkg-deb --build cus_quz_gui_clunits_v1.0-1

clean:
	rm -rf cus_quz_gui_hts_v1.0-1
	rm -rf cus_quz_gui_clunits_v1.0-1
	rm -f *.deb
