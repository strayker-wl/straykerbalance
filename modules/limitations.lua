function add_productivity_limitation(limitationsTable)
	for i, module in pairs(data.raw.module) do
		if module.limitation and module.effect.productivity then
			for j, recipe in pairs(limitationsTable) do
				if data.raw.recipe[recipe] then
					table.insert(module.limitation, recipe)
				end
			end
		end
	end
end