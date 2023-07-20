local libs = { "dll", "so", "dylib" }
for _, lib in ipairs(libs) do
    alias("suffix", lib)
    sh([[go build -buildmode=c-shared -o faker.$suffix faker.go]])
end
