local fake = import("faker")

print(fake.FakeData(json.encode({
    a = 0,
    b = 10
})))
