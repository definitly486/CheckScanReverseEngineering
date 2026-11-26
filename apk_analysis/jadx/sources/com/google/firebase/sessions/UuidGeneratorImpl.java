package com.google.firebase.sessions;

import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class UuidGeneratorImpl implements UuidGenerator {
    public static final UuidGeneratorImpl INSTANCE = new UuidGeneratorImpl();

    private UuidGeneratorImpl() {
    }

    @Override // com.google.firebase.sessions.UuidGenerator
    public UUID next() {
        UUID uuidRandomUUID = UUID.randomUUID();
        uuidRandomUUID.getClass();
        return uuidRandomUUID;
    }
}
