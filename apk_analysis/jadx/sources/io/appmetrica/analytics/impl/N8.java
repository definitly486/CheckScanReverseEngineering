package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class N8 implements Co {
    public final T8 a;

    public N8() {
        this(new T8());
    }

    @Override // io.appmetrica.analytics.impl.Co
    public final byte[] a(Z8 z8, C1233rh c1233rh) {
        String str = z8.b;
        return ((S8) this.a.a.a(z8.o)).a(str != null ? StringUtils.getUTF8Bytes(str) : new byte[0]);
    }

    public N8(T8 t8) {
        this.a = t8;
    }
}
