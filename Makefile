PWD := $(or $(PWD), `pwd`)
#Example for Windows: make touch-pristine-project PWD=%cd%


.PHONY: django-app
django-app:
	docker-compose run --rm app sh -c "python manage.py startapp $$NAME"

.PHONY: docker-up
docker-up:
	docker-compose up

.PHONY: run-tests
run-tests:
	docker-compose run --rm app sh -c "python manage.py test && flake8"


