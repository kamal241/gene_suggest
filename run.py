import sys
import os
from app import app

if __name__ == '__main__':
	port = '5000'
	gsa_home = None
	if 'GSA_HOME' in os.environ:
		gsa_home = os.environ.get('GSA_HOME')
	if gsa_home is not None:
		if len(sys.argv) == 2:
			port = sys.argv[1]
		app.run(port=port)
	else:
		print "GSA_HOME environment variable not set. Set GSA_HOME and run appliction again"
		print "To set GSA_HOME type export GSA_HOME=<app_home_directory>"

	