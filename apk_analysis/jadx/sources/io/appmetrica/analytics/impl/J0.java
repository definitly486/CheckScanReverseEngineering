package io.appmetrica.analytics.impl;

import defpackage.aa4;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashSource;

/* JADX INFO: loaded from: classes5.dex */
public final class J0 {
    public final NativeCrashSource a;
    public final String b;
    public final String c;
    public final String d;
    public final long e;
    public final K0 f;

    public J0(NativeCrashSource nativeCrashSource, String str, String str2, String str3, long j, K0 k0) {
        this.a = nativeCrashSource;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = j;
        this.f = k0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof J0)) {
            return false;
        }
        J0 j0 = (J0) obj;
        return this.a == j0.a && aa4.e(this.b, j0.b) && aa4.e(this.c, j0.c) && aa4.e(this.d, j0.d) && this.e == j0.e && aa4.e(this.f, j0.f);
    }

    public final int hashCode() {
        return this.f.hashCode() + defpackage.vg.b(defpackage.zg.b(defpackage.zg.b(defpackage.zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
    }

    public final String toString() {
        return "AppMetricaNativeCrash(source=" + this.a + ", handlerVersion=" + this.b + ", uuid=" + this.c + ", dumpFile=" + this.d + ", creationTime=" + this.e + ", metadata=" + this.f + ')';
    }
}
