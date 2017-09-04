#!/bin/bash

cd $CIRCLE_WORKING_DIRECTORY

charm build . -o /output

expect /charmlogin

charm push /output/builds/* $PUSH_TARGET $RESOURCE_TARGETS

charm release $PUSH_TARGET --channel $RELEASE_CHANNEL
