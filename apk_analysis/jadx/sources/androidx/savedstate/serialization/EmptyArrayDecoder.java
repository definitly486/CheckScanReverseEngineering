package androidx.savedstate.serialization;

import defpackage.f0;
import defpackage.jq7;
import defpackage.mp7;
import defpackage.nq7;

/* JADX INFO: loaded from: classes3.dex */
final class EmptyArrayDecoder extends f0 {
    public static final EmptyArrayDecoder INSTANCE = new EmptyArrayDecoder();
    private static final jq7 serializersModule = nq7.a;

    private EmptyArrayDecoder() {
    }

    @Override // defpackage.du1
    public int decodeElementIndex(mp7 mp7Var) {
        mp7Var.getClass();
        return -1;
    }

    @Override // defpackage.du1
    public jq7 getSerializersModule() {
        return serializersModule;
    }
}
