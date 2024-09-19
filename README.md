# vim-syntax-ebnf
EBNF Syntax Highlighter for VimL-class editors (NeoVim, Vim, but not Vi).

This is the better EBNF highlighters than most of the ones I've tried on GitHub.

It covers:

* [BNF](http://www.cs.man.ac.uk/~pjj/bnf/bnf.html#BNF), Peter Jenk, 1960
* [ABNF, IETF RFC 2234, (1997)](http://www.faqs.org/rfcs/rfc2234.html)
* EBNF, [ISO/IEC 14977 (1996)](https://www.cl.cam.ac.uk/~mgk25/iso-14977.pdf)
* EBNF, [W3C](https://www.w3.org/TR/xml/); IETF [RFC 4646](https://www.ietf.org/rfc/rfc4646.txt),[RFC 4647](https://www.ietf.org/rfc/rfc4647.txt)

| Style | Name | Rule | Terminal | Non Terminal  | Concat | Choice | Optional |
|---|---|---|---|---|---|---|---|
| BNF  | BNF (Algol 60)  | `<name>::=...`  | `...` | `<...>` |   | '`\|`' | note1  |
| Intermediate | ANSI C  | `name:\n...` | `...`  | bold | italics |   | indented line one of | ...opt  |
| Intermediate | BNF-like description of URLs | `name\n  ...` | `...` | `...` | | '`\|`' | `[...]` |
| Wirth | Wirth | `name=... .`  | `...` | `...` | | | `[...]` | 
| Wirth | SAIF and Bungisoft | `<name>::=... ` | `...` | `<...>` |  | '`\|`' | `[...]` |
| Wirth | EBNF from Compiler Basics by J.A.Farrell  | `name:==...`  | `'...'` | `...` |  | '`\|`' or `[... \| ...]` | `[...]`  | 
| Wirth | Pascal EBNF Definition  | `name\n...` | |  `...`\n*bold*  | `<...>` |  '`\|`' | '[...]'  |  
| Wirth | ISO Extended Pascal  | `name=... .\nname\>... .` | `'...'` | `...` | '`,`'  | '`\|`' | `[...]` | 
| Wirth | ISO EBNF  | `name=...;` | `'...'\n...` | `...` |  '`,`'  | '`\|`' | `[...]` | 
| ABNF | EBNF from RFC822 (superceded by ABNF)  | `name=...`  | integer\n`\"...\"` | `...`\n`<...>` |   | '`/`' | `[...]` |
| ABNF | ABNF (RFC2234) | `name=...`  | integer\n`\"...\"` | `...\n<...>` | | '`/`' | `[...]` |



BNF
===

Rarely used, yet not a Chomskey Normal Form (CNF) either.

EBNF, IETF
====

References
====
* [BNF/EBNF variants](http://www.cs.man.ac.uk/~pjj/bnf/ebnf.html)
* 

Thanks to @Chubek of GitHub over at https://gist.github.com/Chubek/886580036f37bda5d6023595821afa51
