all:
	ocamlfind ocamlc -c -bin-annot example.ml
	ocamlfind ocamlc -I +compiler-libs ocamlcommon.cma parseSomeEnv.ml -o parseSomeEnv.byte
	./parseSomeEnv.byte

clean:
	rm -f *.cmi *.cmo *.cmt *.byte
