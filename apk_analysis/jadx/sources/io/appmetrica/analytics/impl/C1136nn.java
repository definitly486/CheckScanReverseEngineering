package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.nn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1136nn implements Co {
    @Override // io.appmetrica.analytics.impl.Co
    public final byte[] a(Z8 z8, C1233rh c1233rh) {
        return !TextUtils.isEmpty(z8.b) ? StringUtils.getUTF8Bytes(z8.b) : new byte[0];
    }
}
