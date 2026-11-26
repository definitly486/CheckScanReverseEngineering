package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.kj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1054kj extends Ug {
    public C1054kj(C0989i5 c0989i5) {
        super(c0989i5);
    }

    @Override // io.appmetrica.analytics.impl.Ug
    public final boolean a(C0783a6 c0783a6) {
        String str = c0783a6.h;
        if (StringUtils.isNullOrEmpty(str)) {
            return false;
        }
        this.a.a(str);
        return false;
    }
}
