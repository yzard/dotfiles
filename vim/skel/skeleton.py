#!/usr/bin/env python
# -*- coding: utf-8 -*-
# vim: tabstop=4 shiftwidth=4 softtabstop=4 colorcolumn=120 expandtab

import logging


class %CLASS_NAME%(object):
    def __init__(self, ):
        pass


def main(argc, argv):
    '''
    for test purpose if this is a module
    '''
    formatter = '%(asctime)s %(filename)s:%(lineno)d: %(message)s'
    logging.basicConfig(format=formatter, level=logging.DEBUG)

    obj = %CLASS_NAME%()


if __name__ == '__main__':
    import sys
    main(len(sys.argv), sys.argv)
