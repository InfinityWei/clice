        elseif target:is_plat("linux") then
            -- gnu ld need to fix link order
            target:add("ldflags", "-fuse-ld=lld")
            target:add("ldflags", "-static-libgcc")
            target:add("ldflags", "-static-libstdc++")
            target:add("ldflags", "-static")
            -- Add these flags for fully static linking
            target:add("ldflags", "-static-pie")
            target:add("cxflags", "-static")
            target:add("ldflags", "-Wl,--whole-archive -lpthread -Wl,--no-whole-archive")