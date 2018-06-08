-- This file was automatically generated for the LuaDist project.

package = "discount"
version = "0.2-1"
supported_platforms = {"unix"}

description = {
    summary = "Lua bindings for the Discount Markdown library",
    homepage = "https://github.com/craigbarnes/lua-discount",
    license = "ISC"
}

-- LuaDist source
source = {
  tag = "0.2-1",
  url = "git://github.com/LuaDist-testing/discount.git"
}
-- Original source
-- source = {
--     url = "https://craigbarnes.gitlab.io/lua-discount/dist/lua-discount-0.2.tar.gz",
--     md5 = 'a374a402e23eb8f34e6e5265065aa373'
-- }

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "make",
    variables = {
        LUA = "$(LUA)",
        LUA_CFLAGS = "-I$(LUA_INCDIR)",
        LUA_PC = "_disabled",
    },
    build_variables = {
        CFLAGS = "$(CFLAGS)",
        LIBFLAGS = "$(LIBFLAG)",
        USE_LOCAL_DISCOUNT = "1"
    },
    install_variables = {
        LUA_CMOD_DIR = "$(LIBDIR)",
        LUA_LMOD_DIR = "$(LUADIR)"
    }
}