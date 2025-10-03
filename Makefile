# VERSION=0.1.0 make release
release:
	@echo "Release Version $(VERSION)"
	git checkout .
	git clean -fd
	git checkout main
	git pull origin main
	git checkout development
	git pull origin development
	git flow release start $(VERSION)
	echo $(VERSION) > ./VERSION
	git add ./VERSION
	git commit -m "Bump version to $(VERSION)"
	git flow release finish -m "$(VERSION)" $(VERSION)
	git push origin main
	git push origin development
	git push --tags