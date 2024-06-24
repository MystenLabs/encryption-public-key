// Copyright (c) Mysten Labs, Inc.
// SPDX-License-Identifier: Apache-2.0
module encryption_pk::encryption_pk {
    use std::string::String;

    public struct UserPublicKey has key, store {
        id: UID,
        pk: vector<u8>, // 32 bytes of public key for encryption
        description: String // string that stores additional information about the encryption key. 
    }

    public fun create_pk(pk: vector<u8>, description: String, ctx: &mut TxContext) {
        transfer::public_transfer(
            UserPublicKey {
                id: object::new(ctx),
                pk: pk,
                description: description
            },
            tx_context::sender(ctx)
        )
    }
}

