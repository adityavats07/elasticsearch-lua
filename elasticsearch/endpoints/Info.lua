-------------------------------------------------------------------------------
-- Importing modules
-------------------------------------------------------------------------------
local Endpoint = require "endpoints.Endpoint"

-------------------------------------------------------------------------------
-- Declaring module
-------------------------------------------------------------------------------
local Info = Endpoint:new()

-------------------------------------------------------------------------------
-- Function to calculate the http request method
--
-- @return    string    The HTT request method
-------------------------------------------------------------------------------
function Info:getMethod()
  return "GET"
end

-------------------------------------------------------------------------------
-- Function to calculate the URI
--
-- @return    string    The URI
-------------------------------------------------------------------------------
function Info:getUri()
  return '/'
end

-------------------------------------------------------------------------------
-- Returns an instance of Info class
-------------------------------------------------------------------------------
function Info:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

return Info
