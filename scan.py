from urllib.parse import unquote

from requests_html import HTMLSession


class Spell:
    __slots__ = ['spellID', 'en', 'zh']

    def __init__(self, spellID, en, zh):
        self.spellID = spellID
        self.en = ' '.join(en.split('-'))
        self.zh = zh

    def format(self, unit='player', cast='all', filter='debuff', abs=False, extra=None):
        abs_str = ", absID = true " if abs else ""
        s = f'{{ spellID = {self.spellID}, unitID = "{unit}", caster = "{cast}", filter = "{filter}"{abs_str}}},  --{self.en}/{self.zh} {extra}'
        return s

    def __repr__(self):
        return f"< Spell: {self.spellID}{self.zh} >"


def parse(url: str) -> str:
    code = url.rsplit('/', 1)[-1]
    return unquote(code)


def get(spell_id):
    session = HTMLSession()
    r = session.get("https://cn.wowhead.com/spell={}".format(spell_id))
    en_url = r.html.find('link[hreflang="en"]', first=True).attrs['href']
    zh_url = r.url
    return Spell(spell_id, parse(en_url), parse(zh_url))


if __name__ == '__main__':
    s = get(210837)
    print(s)
    print(s.format(abs=True))
    with open('spell.lua', 'w') as f:
        f.write(s.format(extra='\n'))
