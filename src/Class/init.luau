type Class<Body, Impl> = typeof(setmetatable({} :: Body, {} :: Impl))

type ClassConstructor<Class> = () -> Class

local function createClassConstructor<Body, Impl>(impl: Impl, constructor: () -> Body): ClassConstructor<Class<Body, Impl>>
	return function()
		local body = constructor()

		local self: Class<Body, Impl> = setmetatable(body, impl)

		return self
	end
end

return {
	createClassConstructor = createClassConstructor,
}
