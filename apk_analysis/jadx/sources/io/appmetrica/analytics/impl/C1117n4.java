package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.n4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1117n4 {
    public final String a;
    public final Integer b;
    public final String c;

    public C1117n4(String str, Integer num, String str2) {
        this.a = str;
        this.b = num;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1117n4.class == obj.getClass()) {
            C1117n4 c1117n4 = (C1117n4) obj;
            if (!this.a.equals(c1117n4.a)) {
                return false;
            }
            Integer num = this.b;
            Integer num2 = c1117n4.b;
            if (num == null ? num2 != null : !num.equals(num2)) {
                return false;
            }
            String str = this.c;
            String str2 = c1117n4.c;
            if (str != null) {
                return str.equals(str2);
            }
            if (str2 == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Integer num = this.b;
        int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 31;
        String str = this.c;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }
}
