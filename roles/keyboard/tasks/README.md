# Add keyboard variant

Add a variant that works for X11 and Wayland

The keyboard definitions are located at /usr/share/X11/xkb/symbols/*

Select your file to modify; in this case ch

Add the definition of your variant, 

```
partial alphanumeric_keys
xkb_symbols "swissswedish" {
    include "ch(basic)"

    name[Group1]= "German (Switzerland, with Swedish)";
    key <AD06> { [          y,          Y                           ] };
    key <AD07> { [          u,          U,     udiaeresis,       Udiaeresis         ] };
    key <AD11> { [ aring,   Aring,   dead_acute             ] };
    key <AC02> { [          s,          S,     ssharp,       section         ] };
    key <AC10> { [ odiaeresis,     Odiaeresis                           ] };
    key <AC11> { [ adiaeresis,     Adiaeresis,    braceleft             ] };
    key <AB01> { [          z,          Z                           ] };
};
```

# Register keyboard variant

Variants are registered in the file /usr/share/X11/xkb/rules/evdev.xml

Add the following section follwing Switzlernand.. variantList

        <variant>
          <configItem>
            <name>swissswedish</name>
            <description>German (Switzerland, Swedish)</description>
          </configItem>
        </variant>
        
# Reload variants

The following command will kill all applications and restart the login shell. 

systemctl restart gdm.service


