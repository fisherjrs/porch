#!/usr/bin/bash

function sendtext { 
	curl http://textbelt.com/text -d number=6129292101 -d "message=sunshine and lollipops. #jostensalert";
	echo message sent; 
}

sendtext 