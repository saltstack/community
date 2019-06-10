import os


def generate_docs():
    """
    info: generates_docs for salt community
    :return:
    """
    path = '/'.join(os.path.dirname(os.path.realpath(__file__)).split('\\'))
    os.system('salt-call --local --file-root={0} state.sls generate_docs'.format(path))


if __name__ == "__main__":
    generate_docs()
