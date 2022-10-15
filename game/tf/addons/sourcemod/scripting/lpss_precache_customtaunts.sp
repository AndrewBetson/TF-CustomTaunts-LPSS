/**
 * Copyright Andrew Betson.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <https://www.gnu.org/licenses/>.
 */

#include <sourcemod>
#include <sdktools>

#include <morecolors>

#pragma semicolon 1
#pragma newdecls required

#if !defined PLUGIN_VERSION
	#define PLUGIN_VERSION "1.0.0"
#endif // !defined PLUGIN_VERSION

static char CLASS_NAMES[ 9 ][ 9 ] =
{
	"demo",
	"engineer",
	"heavy",
	"medic",
	"pyro",
	"scout",
	"sniper",
	"soldier",
	"spy"
};

public Plugin myinfo =
{
	name		= "[TF2] LPSS Custom Taunts Precache",
	description	= "Silly Server custom taunts setup stuff",
	author		= "Andrew \"andrewb\" Betson",
	version		= PLUGIN_VERSION,
	url			= "https://www.github.com/AndrewBetson/TF-CustomTaunts-LPSS/"
};

public void OnMapStart()
{
	// The creators of the California Gurls taunt request in their README that they be credited.
	// Hopefully this is good enough.
	// TODO(AndrewB): Replace w/ taunt credits menu in main plugin.
	RegConsoleCmd( "sm_californiagurls_credits", Cmd_CaliforniaGurls_Credits, "Print credits for the California Gurls taunt" );

	Precache_CaliforniaGurls();
	Precache_DefaultDance();
}

void Precache_CaliforniaGurls()
{
	for ( int i = 0; i < sizeof( CLASS_NAMES ); i++ )
	{
		char szModelName[ 64 ];

		Format( szModelName, sizeof( szModelName ), "models/lpss_taunts/california_gurls/%s.dx80.vtx", CLASS_NAMES[ i ] );
		AddFileToDownloadsTable( szModelName );

		Format( szModelName, sizeof( szModelName ), "models/lpss_taunts/california_gurls/%s.dx90.vtx", CLASS_NAMES[ i ] );
		AddFileToDownloadsTable( szModelName );

		Format( szModelName, sizeof( szModelName ), "models/lpss_taunts/california_gurls/%s.mdl", CLASS_NAMES[ i ] );
		AddFileToDownloadsTable( szModelName );

		// The custom taunts plugin automatically precaches replacement models,
		// but lets do it ourselves just to be safe...
		PrecacheModel( szModelName );

		Format( szModelName, sizeof( szModelName ), "models/lpss_taunts/california_gurls/%s.phy", CLASS_NAMES[ i ] );
		AddFileToDownloadsTable( szModelName );

		Format( szModelName, sizeof( szModelName ), "models/lpss_taunts/california_gurls/%s.sw.vtx", CLASS_NAMES[ i ] );
		AddFileToDownloadsTable( szModelName );

		Format( szModelName, sizeof( szModelName ), "models/lpss_taunts/california_gurls/%s.vvd", CLASS_NAMES[ i ] );
		AddFileToDownloadsTable( szModelName );
	}

	AddFileToDownloadsTable( "sound/lpss_taunts/california.wav" );
	AddFileToDownloadsTable( "sound/lpss_taunts/california_novox.wav" );

	PrecacheSound( "lpss_taunts/california.wav" );
	PrecacheSound( "lpss_taunts/california_novox.wav" );
}

void Precache_DefaultDance()
{
	for ( int i = 0; i < sizeof( CLASS_NAMES ); i++ )
	{
		char szModelName[ 64 ];

		Format( szModelName, sizeof( szModelName ), "models/lpss_taunts/default_dance/%s.dx80.vtx", CLASS_NAMES[ i ] );
		AddFileToDownloadsTable( szModelName );

		Format( szModelName, sizeof( szModelName ), "models/lpss_taunts/default_dance/%s.dx90.vtx", CLASS_NAMES[ i ] );
		AddFileToDownloadsTable( szModelName );

		Format( szModelName, sizeof( szModelName ), "models/lpss_taunts/default_dance/%s.mdl", CLASS_NAMES[ i ] );
		AddFileToDownloadsTable( szModelName );

		// The custom taunts plugin automatically precaches replacement models,
		// but lets do it ourselves just to be safe...
		PrecacheModel( szModelName );

		Format( szModelName, sizeof( szModelName ), "models/lpss_taunts/default_dance/%s.phy", CLASS_NAMES[ i ] );
		AddFileToDownloadsTable( szModelName );

		Format( szModelName, sizeof( szModelName ), "models/lpss_taunts/default_dance/%s.sw.vtx", CLASS_NAMES[ i ] );
		AddFileToDownloadsTable( szModelName );

		Format( szModelName, sizeof( szModelName ), "models/lpss_taunts/default_dance/%s.vvd", CLASS_NAMES[ i ] );
		AddFileToDownloadsTable( szModelName );
	}

	AddFileToDownloadsTable( "sound/lpss_taunts/default_dance.wav" );
	PrecacheSound( "lpss_taunts/default_dance.wav" );
}

Action Cmd_CaliforniaGurls_Credits( int nClientIdx, int nNumArgs )
{
	CPrintToChat( nClientIdx, "{purple}[LPSS]{default} California Gurls taunt created by:" );
	CPrintToChat( nClientIdx, "\t{unique}Astolfo Alter{default}" );
	CPrintToChat( nClientIdx, "\t{unique}Divously/Wendi{default}" );
	CPrintToChat( nClientIdx, "\t{unique}Chillax{default}" );

	return Plugin_Continue;
}
