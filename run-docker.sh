#!/bin/bash
docker run -it -v `pwd`/scripts:/scripts --rm geoscript-groovy:latest sh -c 'geoscript-groovy /scripts/example-geoscript.groovy'