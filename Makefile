build:
	@docker build -t csaulnier/jmeter-docker:local .

build_all:
	@while read -r version ; do \
		docker build --build-arg JMETER_VERSION=5.3 --tag csaulnier/jmeter-docker:5.3 . ; \
		docker push csaulnier/jmeter-docker:5.3 ; \
	done < VERSIONS
