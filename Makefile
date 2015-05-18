build:
	docker run -v $(shell pwd)/WebApplication:/app -w="/app" benhall/aspnet-vnext-npm dnu build

restore:
	docker run -it -v /Users/ben/.dnx:/home/dev/.dnx -v $(shell pwd)/WebApplication:/app -w="/app" benhall/aspnet-vnext-npm dnu restore

debug:
	docker run -it -v $(shell pwd)/WebApplication:/app -w="/app" benhall/aspnet-vnext-npm /bin/bash

run:
	docker run -it -v /Users/ben/.dnx:/home/dev/.dnx -v $(shell pwd)/WebApplication:/app -w="/app" -p 5001 benhall/aspnet-vnext-npm dnx . kestrel
