package io.appmetrica.analytics.impl;

import defpackage.cl4;
import defpackage.fh8;
import io.appmetrica.analytics.networktasks.internal.ConfigProvider;

/* JADX INFO: loaded from: classes5.dex */
public final class Nb implements ConfigProvider {
    public final C0989i5 a;
    public final cl4 b = new fh8(new Mb(this));

    public Nb(C0989i5 c0989i5) {
        this.a = c0989i5;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.ConfigProvider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1233rh getConfig() {
        return (C1233rh) this.b.getValue();
    }
}
