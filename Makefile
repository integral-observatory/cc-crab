build:
	nb2worker ./ --build --job --from integralsw/osa-python --docker-run-prefix="export HOME_OVERRRIDE=/tmp; source /init.sh; " --docker-command='export HOME_OVERRRIDE=/tmp; source /init.sh; source /etc/bashrc; nbrun /repo/crab.ipynb $$@'

clean:
	jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace crab.ipynb
