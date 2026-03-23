import json
import sys

arb_path = sys.argv[1]

with open(arb_path, 'r', encoding='utf-8') as f:
    arb = json.load(f)

new_keys = {
    "howToCreateTask": "How would you like to create this task?",
    "fillManually": "Fill Manually",
    "describeWithAi": "Describe with AI",
    "aiDescribeProblem": "Describe Your Problem",
    "aiDescribeSheetSubtitle": "Tell us what needs to be done. AI will fill the form.",
    "aiDescribeHint": "e.g. My kitchen tap is leaking badly and needs urgent repair\u2026",
    "aiDescribeMinCharsWarning": "Please describe the problem in more detail",
    "aiGenerateForm": "Generate Form",
    "aiParsingJob": "Understanding your problem\u2026",
    "aiJobPrefillSuccess": "Form pre-filled by AI \u2014 please review",
    "aiJobParseWarning": "Some details couldn\u2019t be extracted \u2014 please review and complete the form",
    "aiJobParseFailed": "Couldn\u2019t understand the description. Please fill the form manually.",
    "aiPrefillBanner": "Pre-filled by AI \u2014 tap any field to edit",
    "addImageContext": "Add Image",
    "imageAttached": "Image attached (for reference)",
}

arb.update(new_keys)

with open(arb_path, 'w', encoding='utf-8') as f:
    json.dump(arb, f, indent=2, ensure_ascii=False)
    f.write('\n')

print(f'Done! Added {len(new_keys)} keys. Total: {len([k for k in arb if not k.startswith("@")])}')
