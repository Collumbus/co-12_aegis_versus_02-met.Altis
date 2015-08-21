/* Briefing
 * The briefing can be defined by calling FHQ_TT_addBriefing.
 * The array is built like this.
 * The first element should be a filter (side, group, faction, or a piece of script). All units matching the
 * filter will see the briefing
 * This is followed by pairs of strings, a head line, and an actual text.
 * Briefings are added in the order in which they appear for any unit that matches
 * the last filter.
 */
[
	{true},
		["Mission",
			"Perditus and Derelictus will eliminate the <marker name='obj1'>distillery foreman</marker>, destroy the two large ouzo containers in the north-east corner of the <marker name='obj1'>distillery complex</marker> and <marker name='obj3'>leave</marker> the AO."],

		["Situation",
			"November 1st 2024: PMC Aegis local high command (callsign 'Corona') has located the first ideal target to use the recently acquired explosives on. The target is the only <marker name='obj1'>ouzo distillery</marker> on Altis, owned by the number one local business man, Mr. Simonides Dionysodoros. The owner is not present at the distillery but Corona has been following the routines of the distillery foreman, Mr. Alexis. The foreman arrives at the distillery every morning at 0600 hours, and the Aegis <marker name='perditus_start'>point team</marker> (callsign 'Perditus') and <marker name='derelictus_start'>support team</marker> have been inserted in the vicinity.<br/><br/>Corona has tasked the teams to eliminate the foreman and also destroy the two ouzo containers located on the north-east corner of the distillery complex. This loss of the whole year's ouzo patch will surely instill discontent and discord among the local populace as well as the AAF forces. The importance of the distillery has been noted among the AAF, and the AAF forces have tasked a sizeable task force to ensure the safety of the distillery.<br/><br/>Corona advises the the Aegis teams to act fast: destroy the containers, find and eliminate the foreman and <marker name='obj3'>exfiltrate to north-east</marker> before the AAF can fully respond."],

		["Enemy",
			"The distillery is guarded by a squad sized force of trained and fully equipped AAF fighters. Corona advises Perditus and Derelictus to use the darkness to their advantage: even though the teams are not equipped with NV gear, use your flashlights, chemlights and flares. The first light is near and attacking at this hour is the only way to eliminate the foreman without having to worry about the distillery workers and losing the foreman to a crowd of civilians. The AAF are likely to respond in full and the Aegis teams should expect AAF reinforcements from the south.<br/><br/>Derelictus has finished equipping the stolen off-roads with .50 caliber HMGs and Corona advises Derelictus to use the vehicles to create a distraction and draw the AAF focus away from Perditus and the distillery."],

		["Callsigns",
			"Corona: local high command operating at FOB Aurum.<br/>Perditus: surgical element, based at FOB Cuprum.<br/>Derelictus: supporting element, based at FOB Ferrum."],

        ["Additional",
			"PMC Aegis uses FHQ Task Tracker to provide operators with briefings and tasks."]

] call FHQ_TT_addBriefing;

[
	{true},                                                         // Filter
    	["task1",										// Task name
         "Eliminate the distillery <marker name='obj1'>foreman</marker>.",				       // Task text in briefing
         "Eliminate the foreman.",							// Task title in briefing
         "courier"										// Waypoint text

        ],
        ["task2",										// Task name
         "Destroy the <marker name='obj1'>two ouzo containers</marker> in the north-east corner of the distillery complex.",				       // Task text in briefing
         "Destroy the containers.",							// Task title in briefing
         "commander"											// Waypoint text

        ],
		["task3",										// Task name
         "Disappear to the <marker name='obj3'>north-east</marker>.",				       // Task text in briefing
         "Leave the AO.",							// Task title in briefing
         "ammo trucks"											// Waypoint text
        ]

] call FHQ_TT_addTasks;
