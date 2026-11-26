package io.appmetrica.analytics.impl;

import defpackage.aa4;
import defpackage.ej0;
import defpackage.xp;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;

/* JADX INFO: loaded from: classes5.dex */
public final class K0 {
    public final String a;
    public final String b;
    public final CounterConfigurationReporterType c;
    public final int d;
    public final String e;
    public final String f;

    public K0(String str, String str2, CounterConfigurationReporterType counterConfigurationReporterType, int i, String str3, String str4) {
        this.a = str;
        this.b = str2;
        this.c = counterConfigurationReporterType;
        this.d = i;
        this.e = str3;
        this.f = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof K0)) {
            return false;
        }
        K0 k0 = (K0) obj;
        return aa4.e(this.a, k0.a) && aa4.e(this.b, k0.b) && this.c == k0.c && this.d == k0.d && aa4.e(this.e, k0.e) && aa4.e(this.f, k0.f);
    }

    public final int hashCode() {
        int iB = defpackage.zg.b(ej0.b(this.d, (this.c.hashCode() + defpackage.zg.b(this.a.hashCode() * 31, 31, this.b)) * 31, 31), 31, this.e);
        String str = this.f;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AppMetricaNativeCrashMetadata(apiKey=");
        sb.append(this.a);
        sb.append(", packageName=");
        sb.append(this.b);
        sb.append(", reporterType=");
        sb.append(this.c);
        sb.append(", processID=");
        sb.append(this.d);
        sb.append(", processSessionID=");
        sb.append(this.e);
        sb.append(", errorEnvironment=");
        return xp.e(sb, this.f, ')');
    }
}
