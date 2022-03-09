LOCALES = {}

function _(str, ...)  -- Translate string

	if LOCALES[CONFIG["Locale"]] ~= nil then

		if LOCALES[CONFIG["Locale"]][str] ~= nil then
			return string.format(LOCALES[CONFIG["Locale"]][str], ...)
		else
			return 'Translation [' .. CONFIG["Locale"] .. '][' .. str .. '] does not exist'
		end

	else
		return 'Locale [' .. CONFIG["Locale"] .. '] does not exist'
	end

end

function _U(str, ...) -- Translate string first char uppercase
	return tostring(_(str, ...):gsub("^%l", string.upper))
end
