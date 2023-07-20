local defaultVersion = "1.0.0"

return {
    name = "faker",
    version = defaultVersion,
    load = function(opt)
        local file = multi_fetch(env.platform:Zip(), {
            Target = wrapzip("faker-" .. defaultVersion),
            Version = opt.ver or defaultVersion
        }, {
            github = "https://github.com/ansurfen/yock-faker/releases/download/{{.Version}}/{{.Target}}",
            gitee = "https://gitee.com/ansurfen/yock-faker/releases/download/{{.Version}}/{{.Target}}"
        })
        uncompress(file, pathf(env.yock_path, "yock_modules"))
    end,
    unload = function()
        rm({ safe = false }, pathf(env.yock_path, "yock_modules/faker"))
    end
}
