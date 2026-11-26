package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class T8 {
    public final Qc a;
    public final Qc b;

    public T8(C0992i8 c0992i8, Y9 y9, C0802b c0802b) {
        Qc qc = new Qc(c0992i8);
        this.a = qc;
        qc.a(U8.NONE, c0992i8);
        qc.a(U8.EXTERNALLY_ENCRYPTED_EVENT_CRYPTER, y9);
        qc.a(U8.AES_VALUE_ENCRYPTION, c0802b);
        this.b = new Qc(c0992i8);
    }

    public T8() {
        this(new C0992i8(), new Y9(), new C0802b());
    }
}
