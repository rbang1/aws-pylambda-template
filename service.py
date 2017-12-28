# -*- coding: utf-8 -*-
import strgen

def handler(event, context):
    length = event.get('length')
    pattern = '[\d\w]{' + str(length) + '}'
    return strgen.StringGenerator(pattern).render()
