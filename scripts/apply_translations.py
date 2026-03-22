#!/usr/bin/env python3
"""
Master translation applier for AroundU mobile app.
Translates all ~392 untranslated keys across 26 non-English locales.

Usage: python3 scripts/apply_translations.py

This imports translation data from:
  - translate_all.py (HI, AR, BN)
  - translations_de_es.py (DE, ES) 
  - translations_batch_*.py (remaining locales)
"""
import json, os, sys, glob, importlib.util

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
ARB_DIR = os.path.join(SCRIPT_DIR, '..', 'lib', 'l10n')

def load_module(name, path):
    """Dynamically load a Python module from path."""
    spec = importlib.util.spec_from_file_location(name, path)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod

def collect_all_translations():
    """Collect translation dicts from all helper modules."""
    translations = {}
    
    # Load from translate_all.py (HI, AR, BN)
    p = os.path.join(SCRIPT_DIR, 'translate_all.py')
    if os.path.exists(p):
        m = load_module('translate_all', p)
        if hasattr(m, 'HI'): translations['hi'] = m.HI
        if hasattr(m, 'AR'): translations['ar'] = m.AR
        if hasattr(m, 'TRANSLATIONS'):
            for k, v in m.TRANSLATIONS.items():
                if k not in translations:
                    translations[k] = v
    
    # Load batch files
    for bp in sorted(glob.glob(os.path.join(SCRIPT_DIR, 'translations_batch_*.py'))):
        name = os.path.basename(bp).replace('.py', '')
        m = load_module(name, bp)
        if hasattr(m, 'LOCALE_DATA'):
            for k, v in m.LOCALE_DATA.items():
                translations[k] = v
    
    return translations

def apply():
    en_path = os.path.join(ARB_DIR, 'app_en.arb')
    with open(en_path, 'r', encoding='utf-8') as f:
        en = json.load(f)
    en_keys = {k: v for k, v in en.items() if not k.startswith('@') and not k.startswith('@@')}

    translations = collect_all_translations()
    print(f"Loaded translations for {len(translations)} locales: {sorted(translations.keys())}")

    total_updated = 0
    for arb_path in sorted(glob.glob(os.path.join(ARB_DIR, 'app_*.arb'))):
        locale = os.path.basename(arb_path).replace('app_', '').replace('.arb', '')
        if locale == 'en':
            continue

        with open(arb_path, 'r', encoding='utf-8') as f:
            data = json.load(f)

        trans = translations.get(locale, {})
        updated = 0

        for key, en_val in en_keys.items():
            if key not in data:
                data[key] = trans.get(key, en_val)
                updated += 1
            elif data[key] == en_val and key in trans:
                data[key] = trans[key]
                updated += 1

        with open(arb_path, 'w', encoding='utf-8') as f:
            json.dump(data, f, ensure_ascii=False, indent=2)
            f.write('\n')

        still_en = sum(1 for k in en_keys if k in data and data[k] == en_keys[k])
        total_updated += updated
        print(f'  {locale:6s}: updated {updated:3d} keys  (still English: {still_en})')

    print(f'\nTotal updates: {total_updated}')
    print('Run: flutter gen-l10n')

if __name__ == '__main__':
    apply()
