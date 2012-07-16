README: internetDraft.xml
	@tclsh ./xml2rfc.tcl xml2rfc $^ $@.txt
	@mv -f $@.txt $@
