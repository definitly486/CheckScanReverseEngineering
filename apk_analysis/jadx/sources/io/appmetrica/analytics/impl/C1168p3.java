package io.appmetrica.analytics.impl;

import android.util.Base64;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.p3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1168p3 implements Co {
    public final T8 a;

    public C1168p3() {
        this(new T8());
    }

    @Override // io.appmetrica.analytics.impl.Co
    public final byte[] a(Z8 z8, C1233rh c1233rh) {
        byte[] bArrDecode = new byte[0];
        String str = z8.b;
        if (str != null) {
            try {
                bArrDecode = Base64.decode(str, 0);
            } catch (Throwable unused) {
            }
        }
        T8 t8 = this.a;
        return ((S8) t8.a.a(z8.o)).a(bArrDecode);
    }

    public C1168p3(T8 t8) {
        this.a = t8;
    }
}
