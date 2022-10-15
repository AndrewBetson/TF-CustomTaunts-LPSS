A fork of TF2-Custom-Taunts by Batfoxkid, modified and configured for [LazyPurple's Silly Servers](https://lazypurple.com/page/server-info)

Taunt Credits
==================
### [California Gurls](https://www.dropbox.com/s/f784q49gie2z4vb/California%20Girls%20(For%20TF2).zip)
- Astolfo Alter
- Divously/Wendi
- Chillax
- IllFonic
- Black Tower Studios

### [Default Dance](https://forums.alliedmods.net/showthread.php?t=311817)
- ShadowMarioBR
- Epic Games

Known Issues
==================
- The plugin currently has a *very* large disk and memory footprint. *(64KiB/10MiB respectively)*
- If the initiator of a mimic-able taunt cancels the taunt, the associated sound will also stop, leaving players that joined the taunt in silence.
- The GitHub Actions workflows inherited from the upstream repo do not currently work with this fork.

TODO
==================
- Add `author` and `url` fields to `TauntEnum`.
- Add menu to display taunt `author` and `url` fields.
- Add fields to `ModelEnum` for precaching/download table stuff.
- Do an optimization pass.
- Convert hard-coded English messages to translation phrases.
- Modify existing GitHub Actions workflows to suit this fork.

License
==================
This plugin is released under version 3 of the GNU Affero General Public License. For more info, see `LICENSE.md`.

Thanks
==================
- [Batfoxkid](https://github.com/Batfoxkid/) for the original plugin
- [gaejuck](https://github.com/gaejuck) of the [Foolish Servers](https://github.com/foolishservers) community for the looping taunt sound block fix

# Original README

# TF2 Custom Taunts
## A base plugin the gives access to players generic and custom taunts

### Stable Releases
Go to [Releases](https://github.com/Batfoxkid/TF2-Custom-Taunts/releases "Releases • Batfoxkid/TF2-Custom-Taunts") and choose out the [lastest release](https://github.com/Batfoxkid/TF2-Custom-Taunts/releases/latest) or older versions.

### Development Releases
You can clone via git or [download](https://github.com/Batfoxkid/TF2-Custom-Taunts/archive/master.zip) for source code. Compiled binaries can be downloaded at [Actions](https://github.com/Batfoxkid/TF2-Custom-Taunts/actions?query=workflow%3APackage+is%3Asuccess "Actions • Batfoxkid/TF2-Custom-Taunts").             
(Click on "Package" and download the "TF2-Custom-Taunts-#" zip file.)

### Credits
FlaminSarge for [[TF2] Taunt 'em](https://github.com/FlaminSarge/tf_tauntem "FlaminSarge/tf_tauntem: [TF2] Taunt 'em ( https://forums.alliedmods.net/showthread.php?t=242866 ) ")
