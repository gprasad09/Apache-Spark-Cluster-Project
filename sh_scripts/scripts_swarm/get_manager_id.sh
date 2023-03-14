#!/bin/bash

manager=$(docker ps --filter "name=sparkstack_manager.1" -q )

echo $manager

