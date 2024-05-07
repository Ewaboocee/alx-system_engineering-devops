#!/usr/bin/env bash
# using puppet to make changes to our configuration file

file { 'ect/ssh/ssh_config':
       ensure => present,

content =>"

	#SSH client configuration
	host*
	identityFile ~/.ssh/school
	PasswordAuthentication no
	",

}
