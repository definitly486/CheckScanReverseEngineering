package io.appmetrica.analytics.impl;

import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.o0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1139o0 {
    public final List a;
    public final boolean b;

    public C1139o0(List list, boolean z) {
        this.a = list;
        this.b = z;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AppMetricaConfigExtension(autoCollectedDataSubscribers=");
        sb.append(this.a);
        sb.append(", needClearEnvironment=");
        return defpackage.sg.d(sb, this.b, ')');
    }
}
