job("/hello", function(ctx)
    local res = json.decode(curl("http://localhost:8080/hello"))
    print(res["email"], res["msg"], res["code"])
end)