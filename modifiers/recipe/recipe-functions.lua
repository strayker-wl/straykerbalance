function migrateItem(oldItem, newItem)
	for i, recipe in pairs(data.raw.recipe) do
		if recipe.result == oldItem then
			recipe.result = newItem
		end
		if recipe.results then
			for j, result in pairs(recipe.results) do
				if result.name == oldItem then
					result.name = newItem
				end
			end
		end
		if recipe.result == oldItem then
			recipe.result = newItem
		end
		if recipe.ingredients then
			for j, ingredient in pairs(recipe.ingredients) do
				if ingredient.name == oldItem then
					ingredient.name = newItem
				end
			end
		end
	end
	
	if data.raw.item[newItem] then
		if data.raw.item[oldItem] then
			data.raw.item[oldItem] = nil
		end
	else
		if data.raw.item[oldItem] then
			data.raw.item[newItem] = data.raw.item[oldItem]
			data.raw.item[oldItem] = nil
		end
	end
end