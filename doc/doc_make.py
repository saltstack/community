import os

path = '/'.join(os.path.dirname(os.path.realpath(__file__)).split('\\'))
os.system('salt-call --local --file-root={0} state.sls generate_docs'.format(path))
