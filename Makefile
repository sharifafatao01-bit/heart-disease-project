report.html: report.Rmd output/table1.rds output/figure1.png code/03_render_report.R
	Rscript code/03_render_report.R

output/table1.rds output/clean_data.rds: code/01_make_table.R data/processed.cleveland.data
	Rscript code/01_make_table.R

output/figure1.png: code/02_make_figure.R output/clean_data.rds
	Rscript code/02_make_figure.R

.PHONY: clean
clean:
	rm -f output/*.rds output/*.png report.html
	.PHONY: install
install:
	Rscript -e "renv::restore(prompt = FALSE)"
