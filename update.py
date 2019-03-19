#!/usr/bin/python3

import os
import os.path
import json
import urllib.request

def main():
    os.system("rm -rf intl-tel-input/")
    os.system("git clone https://github.com/jackocnr/intl-tel-input.git intl-tel-input/")

    r = urllib.request.urlopen("https://api.github.com/repos/jackocnr/intl-tel-input/tags")
    s = r.read().decode('utf-8')
    j = json.loads(s)

    a = {}

    for i in j:
            a[i['name']]=i['commit']['sha']

    c = list(map(lambda x: x['name'], j))

    print("\n\n========== Versions ==========\n")
    print("\n".join(c))
    
    chosen = ""

    while chosen != 'end' and chosen != 'latest' and chosen not in c:
            chosen = input("Choose a version or type 'end' to end or 'latest' for the latest version: ")

    if chosen == 'end':
            return
    
    v = chosen if chosen != 'latest' else c[0]

    commithash = a[v]

    os.system(f"cd intl-tel-input/ && git checkout {commithash}")

    to_copy = {
            "build/img/flags.png":                 "app/assets/images/flags.png",
            "build/img/flags@2x.png":              "app/assets/images/flags@2x.png",
            "build/js/intlTelInput-jquery.js":     "app/assets/javascripts/intlTelInput-jquery.js",
            "build/js/intlTelInput-jquery.min.js": "app/assets/javascripts/intlTelInput-jquery.min.js",
            "build/js/intlTelInput.js":            "app/assets/javascripts/intlTelInput.js",
            "build/js/intlTelInput.min.js":        "app/assets/javascripts/intlTelInput.min.js",
            "build/js/utils.js":                   "vendor/assets/javascripts/libphonenumber/utils.js",
            "src/css/intlTelInput.scss":           "app/assets/stylesheets/intlTelInput.scss",
            "src/css/sprite.scss":                 "app/assets/stylesheets/sprite.scss"
    }

    def copy_file(orig, dest):
        realorig = os.path.join("intl-tel-input/", orig)
        os.system(f"cp {realorig} {dest}")

    for i in to_copy:
        copy_file(i, to_copy[i])
    
    os.system("sed -i 's/url/image-url/g' app/assets/stylesheets/intlTelInput.scss")
    os.system("sed -i 's/\.\.\/img\///g' app/assets/stylesheets/intlTelInput.scss")
    
    with open("lib/intl-tel-input/version.rb", "w+") as f:
        version = v.replace('v', '')
        f.write(f"module IntlTelInput\n\tVERSION = '{version}'\nend\n")

if __name__ == "__main__":
    main()
