# Robot Framework Installation

Pre-requisites:
- OS: Windows

Python Installation:
- Should have Python installed (version >=2.7.9)
Installer: https://www.python.org/downloads/release/python-278/

Confguring PATH:
1. Open Start > Control Panel > System and Security > System > Advanced System Settings > Environment Variables
2. Edit System Variables "Path" value, click Edit and add ";C:\Python27;C:\Python27\Scripts". Note that (;) is important as they separate different entries.
3. Exit the dialog box with OK to save changes

Installing virtualenv (NOTE: This is optional. And this is a tool to create isolated Python environments with its own directories and doesn't share other libraries with other virtualenv environments. THIS SHOULD BE INSTALLED AFTER SUCCESSFULY INSTALLING PIP)
1. Open cmd and execute "pip install virtualenv"
2. Execute "pip install virtualenvwrapper-win"
3. Execute "mkvirtualenv virtual_env_name"
4. To exit exit virtual env, execute "deactivate"
5. To activate virtual env, execute "workon virtual_env_name"

Installing Robot Framework (Using pip Python package manager)
1. Install pip package manager by opening cmd where pip file is located and then execute "get-pip.py"
2. After successfully installing pip, execute "pip install robotframework" to install the latest version of robot framework
3. Verify robot framework installation with this command "pybot --version"
-OR-
1. Download get-pip.py
Installer: https://pip.pypa.io/en/stable/installing/
2. Run python get-pip.py
3. Do steps 2 and 3

Installing Robot Framewrok Selenium2Library
1. Open a new cmd and execute "pip install robotframework-selenium2library"
2. Check installation by going to Python prompt by executing command "python"
3. Atthe Python prompt, import the library with command "import Selenium2Library", no error message should be returned
4. Exit Python prompt by pressing [Ctrl+Z] then press [ENTER]
