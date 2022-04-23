#!/bin/bash

TZ=UTC date -r $1 #On Mac
date -r $1

#date -d @$1 #On Linux