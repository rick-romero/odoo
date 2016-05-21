#!/bin/bash 
OPT=$1
echo "=== INITIALIZING ==="
case $OPT in
  -p|-P) 
	echo "Installing Python dependencies"
	sudo apt-get install python-dev python-yaml python-feedparser python-geoip python-imaging python-pybabel python-unicodecsv wkhtmltopdf libxml2-dev libxmlsec1-dev python-argparse python-Babel python-cups python-dateutil python-decorator python-docutils python-feedparser python-gdata python-gevent python-greenlet python-Jinja2 python-libxslt1 python-lxml python-Mako python-MarkupSafe python-mock python-openid python-passlib python-psutil python-psycopg2 python-pychart python-pydot python-pyparsing python-pyPdf python-ldap python-yaml python-reportlab python-requests python-simplejson python-six python-tz python-unittest2 python-vatnumber python-vobject python-webdav python-Werkzeug python-wsgiref python-xlwt python-zsi python-dev libpq-dev poppler-utils python-pdftools antiword pyboleto
	echo "Installing PIP dependencies"  
	sudo apt-get install python-pip
	sudo apt-get install python-setuptools
	sudo pip install pyserial==2.7
	sudo pip install psycogreen==1.0
	sudo pip install pyusb==1.0.0b1
	sudo pip install qrcode==5.0.1
	sudo pip install Pillow==2.5.1
	sudo pip install boto==2.38.0
	sudo pip install oerplib==0.8.4
	sudo pip install jcconv==0.2.3
	sudo pip install pytz==2014.4
	echo "Installing graphics dependencies"  
	sudo apt-get install xfonts-base xfonts-75dpi xfonts-encodings xfonts-utils fontconfig fontconfig-config libexpat1 libfontconfig1 libfreetype6 libjbig0 libjpeg8 libpng12-0 libssl1.0.0 libx11-6 libx11-data libxau6 libxcb1 libxdmcp6 libxext6 libxfont1 libfontenc1 libxrender1 ttf-dejavu-core ucf x11-common
	;;
  -g|-G) 
	echo "Installing GitHub"
	sudo apt-get install git
	echo "Installing GitHub Dependecies"
	sudo git clone https://github.com/aricaldeira/geraldo --branch master /tmp
	sudo python /tmp/geraldo/setup.py install
	sudo git clone https://github.com/aricaldeira/pyxmlsec --branch master /tmp
	sudo python /tmp/pyxmlsec/setup.py install
	echo "=== DONE ==="
	;;
esac
