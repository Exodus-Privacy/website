---
title: "Comptabilité 2017"
date: 2018-08-20
draft: false
---

* Logiciel utilisé : hlegder
* Commande utilisée : `hledger balance -p YYYY/MM  -M -E -f hledger.journal --pretty-tables`

* Comptablitié en double entrée. Chaque ligne est un compte.

## Balance changes in 2017 / 11:
<pre>
                       ║                            Nov
═══════════════════════╬════════════════════════════════
 Assets:Crypto:Bitcoin ║                    2.16903mBTC
 Assets:Crypto:Ğ1      ║                        370.10Ğ
 Assets:Liberapay      ║                          3.06€
 Donators              ║ -2.16903mBTC, -370.10Ğ, -3.06€
───────────────────────╫────────────────────────────────
                       ║                              0</pre>

                       
## Balance changes in 2017 / 12:
<pre>
                       ║                      Dec 
═══════════════════════╬══════════════════════════
 Assets:Crypto:Bitcoin ║            126.14071mBTC 
 Assets:Crypto:Ğ1      ║                        0 
 Assets:Liberapay      ║                   20.55€ 
 Assets:Paypal         ║                  130.20€ 
 Donators              ║ -126.14071mBTC, -157.97€ 
 Paypal:Fee            ║                    7.22€ 
───────────────────────╫──────────────────────────
                       ║                        0</pre>
