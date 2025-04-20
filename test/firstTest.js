import { should } from "chai";
import { addTwo } from "../math/math.js";

should()

describe("Math Test", function(){
    it("should return 10 for addTwo(5, 5)", function(){
        const result = addTwo(5, 5);
        result.should.equal(10);
    })
})