package io.appmetrica.analytics.screenshot.impl;

import defpackage.lg;

/* JADX INFO: renamed from: io.appmetrica.analytics.screenshot.impl.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1541l {
    public final boolean a;
    public final long b;

    public C1541l(boolean z, long j) {
        this.a = z;
        this.b = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1541l)) {
            return false;
        }
        C1541l c1541l = (C1541l) obj;
        return this.a == c1541l.a && this.b == c1541l.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (Boolean.hashCode(this.a) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ClientSideServiceCaptorConfig(enabled=");
        sb.append(this.a);
        sb.append(", delaySeconds=");
        return lg.f(sb, this.b, ')');
    }
}
