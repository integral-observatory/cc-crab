IMAGE?="cdci/crab-integral-verification:$(shell git describe --always --tags)"

build:
	nb2worker ./ --build --tag-image $(IMAGE) --job --from integralsw/osa-python --docker-run-prefix="mkdir -pv /home/oda; export HOME_OVERRRIDE=/home/oda; source /init.sh; " --docker-command='id; export HOME_OVERRRIDE=/tmp; mkdir -pv $$HOME_OVERRRIDE; source /init.sh; source /etc/bashrc; nbrun /repo/crab.ipynb $$@'

push: build
	docker push $(IMAGE)

clean:
	jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace crab.ipynb
