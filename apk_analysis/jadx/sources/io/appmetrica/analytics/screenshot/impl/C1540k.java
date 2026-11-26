package io.appmetrica.analytics.screenshot.impl;

import defpackage.aa4;

/* JADX INFO: renamed from: io.appmetrica.analytics.screenshot.impl.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1540k {
    public final boolean a;
    public final C1538i b;
    public final C1541l c;
    public final C1539j d;

    public C1540k(boolean z, C1538i c1538i, C1541l c1541l, C1539j c1539j) {
        this.a = z;
        this.b = c1538i;
        this.c = c1541l;
        this.d = c1539j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1540k)) {
            return false;
        }
        C1540k c1540k = (C1540k) obj;
        return this.a == c1540k.a && aa4.e(this.b, c1540k.b) && aa4.e(this.c, c1540k.c) && aa4.e(this.d, c1540k.d);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.a) * 31;
        C1538i c1538i = this.b;
        int iHashCode2 = (iHashCode + (c1538i == null ? 0 : Boolean.hashCode(c1538i.a))) * 31;
        C1541l c1541l = this.c;
        int iHashCode3 = (iHashCode2 + (c1541l == null ? 0 : c1541l.hashCode())) * 31;
        C1539j c1539j = this.d;
        return iHashCode3 + (c1539j != null ? c1539j.hashCode() : 0);
    }

    public final String toString() {
        return "ClientSideScreenshotConfig(enabled=" + this.a + ", apiCaptorConfig=" + this.b + ", serviceCaptorConfig=" + this.c + ", contentObserverCaptorConfig=" + this.d + ')';
    }
}
