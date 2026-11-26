package io.appmetrica.analytics.impl;

import android.util.Base64;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class Zf implements Co, J8 {
    @Override // io.appmetrica.analytics.impl.Co
    public final byte[] a(Z8 z8, C1233rh c1233rh) {
        return StringUtils.isNullOrEmpty(z8.b) ? new byte[0] : Base64.decode(z8.b, 0);
    }

    @Override // io.appmetrica.analytics.impl.J8
    public final int a(U8 u8) {
        return 2;
    }
}
