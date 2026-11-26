package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.lo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1085lo extends Ug {
    public C1085lo(C0989i5 c0989i5) {
        super(c0989i5);
    }

    @Override // io.appmetrica.analytics.impl.Ug
    public final boolean a(C0783a6 c0783a6) {
        String strJ = this.a.c.j();
        String str = c0783a6.h;
        this.a.a(str);
        if (StringUtils.equalsNullSafety(strJ, str)) {
            return false;
        }
        this.a.a(C0781a4.o());
        return false;
    }
}
