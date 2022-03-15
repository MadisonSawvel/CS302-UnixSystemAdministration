#!/bin/bash
cd $2

echo getting the empty files:
	find . -empty -type f 2>/dev/null

echo getting the empty directories:
	find . -empty -type d 2>/dev/null

echo getting unused past year:
	find . -atime +365 2>/dev/null

echo getting owned by unvalid user:
	find . -nouser 2>/dev/null

echo getting owned by unvalid group:
	find . -nogroup 2>/dev/null

echo getting owned by root:
	find  -user root 2>/dev/null

echo getting files larger than 10M:
	find . -size +10M 2>/dev/null
