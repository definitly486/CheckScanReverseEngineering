package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import java.util.HashSet;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.w2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1346w2 extends Ug {
    public final Go b;
    public final C1133nk c;

    public C1346w2(C0989i5 c0989i5) {
        this(c0989i5, c0989i5.u(), C1133nk.c());
    }

    @Override // io.appmetrica.analytics.impl.Ug
    public final boolean a(C0783a6 c0783a6) {
        C0989i5 c0989i5 = this.a;
        if (!this.b.c() && !this.b.d()) {
            if (((C1233rh) c0989i5.k.a()).e) {
                C1133nk c1133nk = this.c;
                synchronized (c1133nk) {
                    c1133nk.b.d(false);
                }
            }
            Y8 y8 = this.a.l;
            if (y8.c == null) {
                y8.a();
            }
            C0786a9 c0786a9 = y8.c;
            c0786a9.getClass();
            c0786a9.b = new HashSet();
            c0786a9.d = 0;
            C0786a9 c0786a10 = y8.c;
            c0786a10.a = true;
            C0864d9 c0864d9 = y8.b;
            IBinaryDataHelper iBinaryDataHelper = c0864d9.c;
            C0838c9 c0838c9 = c0864d9.b;
            c0864d9.a.getClass();
            iBinaryDataHelper.insert("event_hashes", c0838c9.toByteArray(C0812b9.a(c0786a10)));
        }
        return false;
    }

    public C1346w2(C0989i5 c0989i5, Go go, C1133nk c1133nk) {
        super(c0989i5);
        this.b = go;
        this.c = c1133nk;
    }
}
