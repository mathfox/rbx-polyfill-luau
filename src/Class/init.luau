export type Class<Body, Impl> = typeof(setmetatable({} :: Body, {} :: Impl))

export type ClassConstructor<Class> = () -> Class

local function createClassConstructor<Body, Impl>(impl: Impl, constructor: () -> Body): ClassConstructor<Class<Body, Impl>>
	return function()
		local body = constructor()

		local self: Class<Body, Impl> = setmetatable(body, impl)

		return self
	end
end

local exports = {
	createClassConstructor = createClassConstructor,
}

table.freeze(exports)

return exports
