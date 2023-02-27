const getExample = () => {
  return { test: "123" };
};

describe("Examples controller", () => {
  test("should return test = 123", async () => {
    const result = await getExample();
    const t = result.test;
    expect(t).toEqual("123");
  });
});
