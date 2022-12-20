hooksecurefunc('TextStatusBar_UpdateTextStringWithValues', function(statusFrame, textString, value, valueMin, valueMax)
  if ((tonumber(valueMax) ~= valueMax or valueMax > 0) and not (statusFrame.pauseUpdates)) then
    if ((statusFrame.cvar and GetCVar(statusFrame.cvar) == "1" and statusFrame.textLockable) or statusFrame.forceShow) or (statusFrame.lockShow > 0 and (not statusFrame.forceHideText)) then
      local valueDisplay = value;
      if (statusFrame.capNumericDisplay) then
        valueDisplay = AbbreviateLargeNumbers(value);
      else
        valueDisplay = BreakUpLargeNumbers(value);
      end

      textString:SetText(valueDisplay)
    end
  end
end)

