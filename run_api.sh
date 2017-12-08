#!/bin/sh

venvdir=gsa_dtest
gsadir=gene_suggest
if [ -d "$gsadir" ]; then
	if [ -d "$venvdir" ]; then
		source gsa_dtest/bin/activate
		cd gene_suggest
		python run.py
	else
		echo "It seems that virtual environment does not exist"
		echo "Either run setup_api.sh or Follow the steps as per SETUP_API.md"		
	fi
else
	echo "gene_suggest does not Exists"
	echo "Either clone from git or download from following url"
	echo "To clone type git clone https://github.com/kamal241/gene_suggest.git"
	echo "Go to https://github.com/kamal241/gene_suggest.git and download zip and extract it"
fi
