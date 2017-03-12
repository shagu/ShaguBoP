ShaguBoP = CreateFrame("Frame", nil, nil)  
ShaguBoP:RegisterEvent("LOOT_BIND_CONFIRM")

ShaguBoP:SetScript("OnEvent", function()
  -- auto accept BoP loot in solo mode
  if GetNumPartyMembers() == 0 and GetNumRaidMembers() == 0 then
    local dialog = StaticPopup_Show("LOOT_BIND")
    if dialog then
      dialog.data = arg1
      StaticPopup1Button1:Click()
    end
  end
end)
