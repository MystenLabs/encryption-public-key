
#[test_only]
module encryption_pk::encryption_pk_tests {
    use encryption_pk::encryption_pk::create_pk;
    use sui::test_scenario::Self;
    use std::string::utf8;

    #[test]
    fun test_encryption_pk() {
        let alice: address = @0xAAAA;
        let mut test = test_scenario::begin(alice);
        test_scenario::next_tx(&mut test, alice);
        {
            create_pk(x"7e4237ebfbc36613e166bfc5f6229360a9c1949242da97ca04867e4de57b2df30c8340bcb320328cf46d71bda51fcb519e3ce53b348eec62de852e350edbd88600", utf8(b"df4"), test_scenario::ctx(&mut test));
        };
        test_scenario::end(test);
    }
}
