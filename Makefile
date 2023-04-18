# Makefile

# example usage:
# make all

all : analysis/penguins.html

# write the report
analysis/penguins.html : analysis/penguins.Rmd
	Rscript -e "rmarkdown::render('analysis/penguins.Rmd', output_dir = here::here('output'))"

clean:
	rm -rf analysis/penguins.html output/penguins.html
