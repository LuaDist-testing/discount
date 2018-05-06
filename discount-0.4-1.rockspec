-- This file was automatically generated for the LuaDist project.

package = "discount"
version = "0.4-1"

description = {
    summary = "Lua bindings for the Discount Markdown library",
    homepage = "https://github.com/craigbarnes/lua-discount",
    license = "ISC"
}

-- LuaDist source
source = {
  tag = "0.4-1",
  url = "git://github.com/LuaDist-testing/discount.git"
}
-- Original source
-- source = {
--     url = "https://craigbarnes.gitlab.io/dist/lua-discount/lua-discount-0.4.tar.gz",
--     md5 = "919647cfea67d7430f4516609e442e4d"
-- }

dependencies = {
    "lua >= 5.1"
}

external_dependencies = {
    DISCOUNT = {
        header = "mkdio.h",
        library = "markdown"
    }
}

build = {
    type = "builtin",
    modules = {
        discount = {
            sources = {"discount.c"},
            libraries = {"markdown"}
        }
    }
}