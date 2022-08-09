ShaguBoP = CreateFrame("Frame", nil, nil)
ShaguBoP:RegisterEvent("LOOT_BIND_CONFIRM")
ShaguBoP:RegisterEvent("LOOT_OPENED")
ShaguBoP:SetScript("OnEvent", function()
  -- auto accept BoP loot in solo mode
  if GetNumPartyMembers() == 0 and GetNumRaidMembers() == 0 then
    if event == "LOOT_BIND_CONFIRM" then
      LootSlot(arg1)
      StaticPopup1Button1:Click()
    elseif event == "LOOT_OPENED" then
      for i=1,GetNumLootItems() do
        LootSlot(i)
      end
    end
  end
end)
