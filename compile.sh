#!/usr/bin/env bash

g++ main.cpp -o main -I$HOME/include -L$HOME/lib/ -lsfml-graphics -lsfml-window -lsfml-system
