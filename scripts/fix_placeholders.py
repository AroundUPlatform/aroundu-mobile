#!/usr/bin/env python3
"""Fix placeholder names in translated ARB files to match English source."""
import json, glob, os

ARB_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'lib', 'l10n')

FIXES = {
    'distanceKm': [('km', 'radius')],
    'downloadingProgress': [('progress', 'percent')],
    'signedInAs': [('name', 'email')],
    'chatReFallback': [('title', 'jobTitle')],
    'deleteUserTitle': [('name', 'role')],
    'confirmDeleteAddress': [('address', 'addressLabel')],
    'workerNumber': [('number', 'id')],
}

# Keys where we need to REMOVE a placeholder that doesn't exist in English
REMOVE_PLACEHOLDER = {
    'removeAiModelConfirm': ['size'],
}

total_fixes = 0
for arb_path in sorted(glob.glob(os.path.join(ARB_DIR, 'app_*.arb'))):
    locale = os.path.basename(arb_path).replace('app_', '').replace('.arb', '')
    if locale == 'en':
        continue
    with open(arb_path, 'r', encoding='utf-8') as f:
        data = json.load(f)
    fixes_this = 0
    for key, replacements in FIXES.items():
        if key not in data:
            continue
        val = data[key]
        for wrong, correct in replacements:
            old = '{' + wrong + '}'
            new = '{' + correct + '}'
            if old in val:
                data[key] = val.replace(old, new)
                val = data[key]
                fixes_this += 1
    for key, placeholders in REMOVE_PLACEHOLDER.items():
        if key not in data:
            continue
        val = data[key]
        for ph in placeholders:
            token = '{' + ph + '}'
            if token in val:
                data[key] = val.replace(token, '')
                val = data[key]
                fixes_this += 1
    if fixes_this > 0:
        with open(arb_path, 'w', encoding='utf-8') as f:
            json.dump(data, f, ensure_ascii=False, indent=2)
            f.write('\n')
        total_fixes += fixes_this
        print(f'{locale}: {fixes_this} placeholder fixes')

print(f'\nTotal placeholder fixes: {total_fixes}')
