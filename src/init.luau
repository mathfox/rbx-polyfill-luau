local Class = require("Class")
export type ClassImpl<Extend> = Class.ClassImpl<Extend>
export type Class<Body, ImplExtend> = Class.Class<Body, ImplExtend>
export type ClassConstructor<Class> = Class.ClassConstructor<Class>

local exports = {
	Class = Class,
}

table.freeze(exports)

return exports
