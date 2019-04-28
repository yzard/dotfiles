#!/usr/bin/env python
# -*- coding: utf-8 -*-
# vim: tabstop=4 shiftwidth=4 softtabstop=4 colorcolumn=120 expandtab

import logging
import argparse


class %CLASS_NAME%(object):
    def __init__(self, ):
        pass


def get_args():
    parser = argparse.ArgumentParser
    parser = argparse.ArgumentParser(description='%CLASS_NAME%',
                                     formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument("-f", "--file", help="specify file name") 
    parser.add_argument("leftover", nargs="*")
    return parser


def main():
    formatter = '%(asctime)s %(filename)s:%(lineno)d: %(message)s'
    logging.basicConfig(format=formatter, level=logging.DEBUG)

    parser = get_args()

    obj = %CLASS_NAME%()


if __name__ == '__main__':
    main()
