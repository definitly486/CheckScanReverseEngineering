package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.internal.CounterConfigurationReporterType;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.d4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0859d4 {
    public final String a;
    public final String b;
    public final Integer c;
    public final String d;
    public final CounterConfigurationReporterType e;

    public C0859d4(String str, String str2, Integer num, String str3, CounterConfigurationReporterType counterConfigurationReporterType) {
        this.a = str;
        this.b = str2;
        this.c = num;
        this.d = str3;
        this.e = counterConfigurationReporterType;
    }

    public static C0859d4 a(V3 v3) {
        return new C0859d4(v3.b.getApiKey(), v3.a.a.getAsString("PROCESS_CFG_PACKAGE_NAME"), v3.a.a.getAsInteger("PROCESS_CFG_PROCESS_ID"), v3.a.a.getAsString("PROCESS_CFG_PROCESS_SESSION_ID"), v3.b.getReporterType());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C0859d4.class == obj.getClass()) {
            C0859d4 c0859d4 = (C0859d4) obj;
            String str = this.a;
            String str2 = c0859d4.a;
            if (str == null ? str2 != null : !str.equals(str2)) {
                return false;
            }
            if (!this.b.equals(c0859d4.b)) {
                return false;
            }
            Integer num = this.c;
            Integer num2 = c0859d4.c;
            if (num == null ? num2 != null : !num.equals(num2)) {
                return false;
            }
            String str3 = this.d;
            String str4 = c0859d4.d;
            if (str3 == null ? str4 != null : !str3.equals(str4)) {
                return false;
            }
            if (this.e == c0859d4.e) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.a;
        int iB = defpackage.zg.b((str != null ? str.hashCode() : 0) * 31, 31, this.b);
        Integer num = this.c;
        int iHashCode = (iB + (num != null ? num.hashCode() : 0)) * 31;
        String str2 = this.d;
        return this.e.hashCode() + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "ClientDescription{mApiKey='" + this.a + "', mPackageName='" + this.b + "', mProcessID=" + this.c + ", mProcessSessionID='" + this.d + "', mReporterType=" + this.e + '}';
    }
}
