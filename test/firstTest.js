const assert = require("assert");
const addTwo = require("../math/math");

describe("Math Test", function () {
    it("should return 10 for addTwo(5, 5)", function () {
        const result = addTwo(5, 5);
        assert.strictEqual(result, 10);
    });
});
