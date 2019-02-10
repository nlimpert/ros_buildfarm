@[if os_name == 'debian' or os_name == 'ubuntu' and os_code_name not in ['trusty', 'utopic'] and testing]@
@# Install haros with its dependencies

# pyflwor has to be cloned in edit mode
USER buildfarm

RUN python3 -u /tmp/wrapper_scripts/apt.py update-install-clean -q -y ros-@(rosdistro_name)-catkin-virtualenv ros-@(rosdistro_name)-rosgraph

RUN pip install --user -U git+https://github.com/timtadh/pyflwor.git#egg=pyflwor

USER root
@[end if]@
