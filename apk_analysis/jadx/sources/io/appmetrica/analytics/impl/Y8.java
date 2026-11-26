package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class Y8 {
    public final int a;
    public final C0864d9 b;
    public C0786a9 c;

    public Y8(C0864d9 c0864d9, int i) {
        this.a = i;
        this.b = c0864d9;
    }

    public final void a() {
        C0786a9 c0786a9;
        C0864d9 c0864d9 = this.b;
        c0864d9.getClass();
        try {
            byte[] bArr = c0864d9.c.get("event_hashes");
            if (bArr == null || bArr.length == 0) {
                C0812b9 c0812b9 = c0864d9.a;
                c0864d9.b.getClass();
                G9 g9 = new G9();
                c0812b9.getClass();
                c0786a9 = new C0786a9(g9.a, g9.b, g9.c, CollectionUtils.hashSetFromIntArray(g9.d));
            } else {
                C0812b9 c0812b10 = c0864d9.a;
                G9 state = c0864d9.b.toState(bArr);
                c0812b10.getClass();
                c0786a9 = new C0786a9(state.a, state.b, state.c, CollectionUtils.hashSetFromIntArray(state.d));
            }
        } catch (Throwable unused) {
            C0812b9 c0812b11 = c0864d9.a;
            c0864d9.b.getClass();
            G9 g10 = new G9();
            c0812b11.getClass();
            c0786a9 = new C0786a9(g10.a, g10.b, g10.c, CollectionUtils.hashSetFromIntArray(g10.d));
        }
        this.c = c0786a9;
        int i = c0786a9.c;
        int i2 = this.a;
        if (i != i2) {
            c0786a9.c = i2;
            c0786a9.d = 0;
            C0864d9 c0864d10 = this.b;
            IBinaryDataHelper iBinaryDataHelper = c0864d10.c;
            C0838c9 c0838c9 = c0864d10.b;
            c0864d10.a.getClass();
            iBinaryDataHelper.insert("event_hashes", c0838c9.toByteArray(C0812b9.a(c0786a9)));
        }
    }
}
