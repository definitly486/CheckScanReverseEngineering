package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.jd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1022jd extends R2 {
    public final String b;

    public C1022jd(String str, Nl nl) {
        super(nl);
        this.b = str;
    }

    @Override // io.appmetrica.analytics.impl.R2
    public final String a(String str) {
        return str + '-' + this.b;
    }
}
