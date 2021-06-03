REBAR?=rebar

perf_report:
	$(REBAR) -C rebar-test.config get compile
	erl -pa deps/*/ebin ebin -noshell -run hyper perf_report -s init stop

# This report require additional dependencies stdlib2 and basho_stats
# estimate_report:
# 	./rebar -C rebar-test.config get compile
# 	erl -pa deps/*/ebin ebin -noshell -run hyper estimate_report -s init stop
# 	bin/plot.R
