import com.GameInterface.Game.Character;
import com.Utils.Archive;
import com.Utils.Signal;
import com.GameInterface.Spell;
import com.GameInterface.SpellData;
import com.GameInterface.Game.BuffData;
import com.Components.BuffComponent;


function OnModuleActivated(config:Archive)
{
	
	m_ClientCharacter = Character.GetClientCharacter();
	
	m_ClientCharacter.SignalBuffAdded.Connect(SlotBuffAdded, this);
	m_ClientCharacter.SignalBuffUpdated.Connect(SlotBuffChanged, this);
	m_ClientCharacter.SignalBuffRemoved.Connect(SlotBuffRemoved, this);
	m_ClientCharacter.SignalInvisibleBuffAdded.Connect(SlotiBuffAdded, this);
	m_ClientCharacter.SignalInvisibleBuffUpdated.Connect(SlotiBuffChanged, this);	
	
	//com.GameInterface.UtilsBase.PrintChatText("BuffInfo Loaded");
	
}

function SlotBuffAdded(buffId:Number)
{
	
	com.GameInterface.UtilsBase.PrintChatText("Buff Added: " + buffId + " - " + m_ClientCharacter.m_BuffList[buffId].m_Name);
	
}

function SignalBuffUpdated(buffId:Number)
{
	
	com.GameInterface.UtilsBase.PrintChatText("Buff Updated: " + buffId  + " - " + m_ClientCharacter.m_BuffList[buffId].m_Name);
	
}

function SignalBuffRemoved(buffId:Number)
{
	
	com.GameInterface.UtilsBase.PrintChatText("Buff Removed - " + buffId);
	
}

function SlotiBuffAdded(buffId:Number)
{
	
	com.GameInterface.UtilsBase.PrintChatText("iBuff Added: " + buffId + " - " + m_ClientCharacter.m_InvisibleBuffList[buffId].m_Name);

}

function SignaliBuffUpdated(buffId:Number)
{
	
	com.GameInterface.UtilsBase.PrintChatText("iBuff Updated: " + buffId + " - " + m_ClientCharacter.m_InvisibleBuffList[buffId].m_Name);
	
}