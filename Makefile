.PHONY: merge pdf clean check

merge:
	bash tools/scripts/merge-chapters.sh

pdf: merge
	bash tools/scripts/build-book.sh

check:
	bash tools/scripts/check-structure.sh

clean:
	rm -rf build/merged/*
	rm -rf build/pdf/*
