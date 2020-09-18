build:
	GOOS=linux GOARCH=amd64 go build -v -ldflags '-d -s -w' -a -tags netgo -installsuffix netgo -o build/bin/app .

init:
	terraform init infra

plan:
	terraform plan infra

apply:
	terraform apply infra

destroy:
	terraform destroy infra