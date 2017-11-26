all: latest 24.8.5 24.7.4 24.6.1 24.5.6 24.4.6 24.3.3 24.2.3 24.1.3 24.0.2 

24.8.5/Dockerfile: Dockerfile
	mkdir -p 24.8.5 && export GAMS_VERSION=24.8.5 && make update

latest: .PHONY
	docker build -t iiasa/gams .

24.8.5: .PHONY
	docker build -t iiasa/gams:24.8.5 24.8.5

24.7.4: .PHONY
	docker build -t iiasa/gams:24.7.4 24.7.4

24.6.1: .PHONY
	docker build -t iiasa/gams:24.6.1 24.6.1

24.5.6: .PHONY
	docker build -t iiasa/gams:24.5.6 24.5.6

24.4.6: .PHONY
	docker build -t iiasa/gams:24.4.6 24.4.6

24.3.3: .PHONY
	docker build -t iiasa/gams:24.3.3 24.3.3

24.2.3: .PHONY
	docker build -t iiasa/gams:24.2.3 24.2.3

24.1.3: .PHONY
	docker build -t iiasa/gams:24.1.3 24.1.3

24.0.2: .PHONY
	docker build -t iiasa/gams:24.0.2 24.0.2

#24.8.5/Dockerfile: Dockerfile
#	mkdir -p 24.8.5 && export GAMS_VERSION=24.8.5 && make update

#24.7.4/Dockerfile: Dockerfile
#	mkdir -p 24.7.4 && export GAMS_VERSION=24.7.4 && make update

#24.6.1/Dockerfile: Dockerfile
#	mkdir -p 24.6.1 && export GAMS_VERSION=24.6.1 && make update

#24.5.6/Dockerfile: Dockerfile
#	mkdir -p 24.5.6 && export GAMS_VERSION=24.5.6 && make update

#24.4.6/Dockerfile: Dockerfile
#	mkdir -p 24.4.6 && export GAMS_VERSION=24.4.6 && make update

#24.3.3/Dockerfile: Dockerfile
#	mkdir -p 24.3.3 && export GAMS_VERSION=24.3.3 && make update

#24.2.3/Dockerfile: Dockerfile
#	mkdir -p 24.2.3 && export GAMS_VERSION=24.2.3 && make update

#24.1.3/Dockerfile: Dockerfile
#	mkdir -p 24.1.3 && export GAMS_VERSION=24.1.3 && make update

#24.0.2/Dockerfile: Dockerfile
#	mkdir -p 24.0.2 && export GAMS_VERSION=24.0.2 && make update

update:
	cp Dockerfile ${GAMS_VERSION}/Dockerfile
	sed -i 's/ENV GAMS_VERSION=.*/ENV GAMS_VERSION=${GAMS_VERSION}/' ${GAMS_VERSION}/Dockerfile

.PHONY: 
	echo "building image..."

