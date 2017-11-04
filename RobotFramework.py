class RobotFramework(object):
    def __init__(self):
        pass

    def start_robot(self,name):
        self._name = name
        print("Robot "+self._name+" is starting")

    def do_something(self,what):
        print("Robot "+self._name+" is doing something..."+what)

    def stop_robot(self):
        print("Robot "+self._name+" is stopping")
