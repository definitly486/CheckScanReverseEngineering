package io.appmetrica.analytics.impl;

import defpackage.me0;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.gk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0952gk {
    public final String a;
    public final String b;

    public C0952gk(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SelfReportingLazyEvent(eventName='");
        sb.append(this.a);
        sb.append("', eventValue='");
        return me0.d(sb, this.b, "')");
    }
}
