---@diagnostic disable: undefined-global
ffi.library(pathf("#1", "../faker"), {
    Latitude = { 'double', {} },
    Email = { "str", {} },
    ChineseFirstName = { "str", {} },
    CCType = { "str", {} },
    CCNumber = { "str", {} },
    Currency = { "str", {} },
    -- FakeData = { "str", { "str" } }
})

return {
    Latitude = ffi.lib.faker.Latitude,
    Email = ffi.lib.faker.Email,
    ChineseFirstName = ffi.lib.faker.ChineseFirstName,
    CCType = ffi.lib.faker.CCType,
    CCNumber = ffi.lib.faker.CCNumber,
    Currency = ffi.lib.faker.Currency,
    -- FakeData = ffi.lib.faker.FakeData,
}
