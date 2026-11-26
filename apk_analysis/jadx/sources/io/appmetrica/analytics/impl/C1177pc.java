package io.appmetrica.analytics.impl;

import android.content.Context;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.pc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1177pc implements InterfaceC1298u4 {
    @Override // io.appmetrica.analytics.impl.InterfaceC1298u4
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final G4 a(Context context, C1144o5 c1144o5, C0859d4 c0859d4, B4 b4) {
        I4 i4;
        H4 h4 = new H4(c0859d4.b);
        J4 j4 = new J4();
        synchronized (c1144o5) {
            i4 = (I4) c1144o5.a(h4, b4, j4, c1144o5.b);
        }
        return new G4(context, i4, b4);
    }
}
