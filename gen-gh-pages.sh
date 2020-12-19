#!/usr/bin/env bash

hugo
cd public
git add --all
git commit -m "Update GH pages"
