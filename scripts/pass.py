#!/usr/bin/env python

from string import ascii_lowercase, ascii_uppercase, digits, punctuation
from random import randint
from sys import argv


config = {
    'l': ascii_lowercase,
    'u': ascii_uppercase,
    'd': digits,
    'p': punctuation
}


def helpMSG():
    print('''
    ==========================================
    l - lowercase\td - digits
    u - uppercase\tp - punctuation

    Example:  Use  `python ./ -ld 8`  for make
    a password with LOWERCASE and NUMBERS with
    8 digits.
    ==========================================
    ''')
    exit()

def makePassword(char, lenght):
    result = ''
    for i in range(lenght):
        result += char[ randint(0, len(char)-1)]
    return result


def main():
    char = password = ''
    lenght = None
    lucky = randint(0, 10)

    for k,v in enumerate(argv):
        if v[0] == '-':
            for i in v[1:]:
                # try:
                char += config[i]
                # except:
                    # helpMSG()
        if v.isnumeric():
            lenght = int(v)
    print()

    try:
        for i in range(10):
            print(
                '\033[32m\t' + makePassword(char, lenght) + '\033[m'
                if i==lucky else
                '\t' + makePassword(char, lenght)
            )
    except:
        helpMSG()
    print()


if __name__ == "__main__":
    main()
