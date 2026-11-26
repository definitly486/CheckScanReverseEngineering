package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class M2 {
    public final L2 a;
    public final Boolean b;

    public M2(L2 l2, Boolean bool) {
        this.a = l2;
        this.b = bool;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && M2.class == obj.getClass()) {
            M2 m2 = (M2) obj;
            if (this.a != m2.a) {
                return false;
            }
            Boolean bool = this.b;
            Boolean bool2 = m2.b;
            if (bool != null) {
                return bool.equals(bool2);
            }
            if (bool2 == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        L2 l2 = this.a;
        int iHashCode = (l2 != null ? l2.hashCode() : 0) * 31;
        Boolean bool = this.b;
        return iHashCode + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        return "BackgroundRestrictionsState{mAppStandByBucket=" + this.a + ", mBackgroundRestricted=" + this.b + '}';
    }
}
