# Makefile for arduterm
#
#
ROBOT=python -m robot
PYTHON=python

all: tests

tests: RobotFrameworkDemo

RobotFrameworkDemo: RobotFrameworkDemo.robot
	$(ROBOT) $<


clean:
	-@rm -rf *.log screenlog.* *.html *.pyc output.xml
