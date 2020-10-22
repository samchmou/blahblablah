r=${RANDOM};
git checkout -b test-$r && \
	echo $r > README.adoc && \
    git commit -asm ${r} && \
    git push origin test-${r} && \
	hub pull-request -m "No edit" && \
	git checkout master && \
git branch -D test-${r}
