--!A cross-platform document build utility based on Lua
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--
-- Copyright (C) 2015-present, TBOOX Open Source Group.
--
-- @author      ruki
-- @file        opendoc.lua
--

-- imports
import("core.base.option")

function main()
    local htmldir = path.absolute(option.get("htmldir"))
    local indexfile = path.join(htmldir, "index.html")
    if is_host("macosx") then
        os.execv("open", {indexfile})
    else
        -- TODO
    end
end
