SRC := $(shell ls draft-mccallum-websso-*.xml)
DST := $(shell echo $(SRC) | sed 's|xml|txt|')

README: $(DST)
	@cp -f $^ $@

$(DST): $(SRC)
	@tclsh ./xml2rfc.tcl xml2rfc $^ $@

clean:
	@rm -f README $(DST)
