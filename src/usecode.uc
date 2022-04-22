#game "serpentisle"

const int DOUBLECLICK = 1;

const int GUARDIAN_PUPPET_FACE = 315;

void GuardianPuppet shape#(0x40c) ()
{
	GUARDIAN_PUPPET_FACE->show_npc_face(0);
	if (event == DOUBLECLICK)
	{
		item.say("You used the puppet and imitate Guardian voice. @Avatar!@");
		converse (["Name", "Job", "Bye"])
		{
		case "Bye":
			say("@I'm not going anywhere, Avatar!@");
			break;
		case "Name" (remove):
			say("@Avatar! Thou shall know your Lord Guardian! Hahahaha!@");
			add("Guardian");
			add("Puppet");
		case "Guardian" (remove):
			say("@Do you really know where you're going, Avatar?@");
		case "Puppet" (remove):
			say("@Hahahaha!!!@");
		case "Job":
			say("@I am helping you, my friend.@");
		}
		item.hide();
	}
}
