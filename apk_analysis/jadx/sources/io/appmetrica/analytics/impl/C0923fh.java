package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.limitation.BytesTrimmer;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.fh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0923fh {
    public final Bh a;
    public final C1436zh b;
    public final C0897eh c;

    public C0923fh(Bh bh, BytesTrimmer bytesTrimmer, C0900ek c0900ek, An an) {
        this.a = bh;
        this.b = new C1436zh(bh, bytesTrimmer, c0900ek);
        this.c = new C0897eh(an);
    }
}
