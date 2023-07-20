---@diagnostic disable: param-type-mismatch
local fake = import("../faker")

httplib.GET("/hello", function(req)
    return json.encode({
        email = fake.Email(),
        msg = "success to register",
        code = 200
    })
end)

httplib.run(8080)
