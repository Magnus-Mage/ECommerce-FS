#!/bin/bash
docker run -it -v $(pwd):/app -p 5173:5173 careeco-node
