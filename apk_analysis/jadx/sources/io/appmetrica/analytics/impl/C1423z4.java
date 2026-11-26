package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.z4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1423z4 {
    public final boolean a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final Boolean f;

    public C1423z4(C1373x4 c1373x4) {
        this.a = c1373x4.a;
        this.b = c1373x4.b;
        this.c = c1373x4.c;
        this.d = c1373x4.d;
        this.e = c1373x4.e;
        this.f = c1373x4.f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1423z4.class == obj.getClass()) {
            C1423z4 c1423z4 = (C1423z4) obj;
            if (this.a != c1423z4.a || this.b != c1423z4.b || this.c != c1423z4.c || this.d != c1423z4.d || this.e != c1423z4.e) {
                return false;
            }
            Boolean bool = this.f;
            Boolean bool2 = c1423z4.f;
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
        int i = (((((((((this.a ? 1 : 0) * 31) + (this.b ? 1 : 0)) * 31) + (this.c ? 1 : 0)) * 31) + (this.d ? 1 : 0)) * 31) + (this.e ? 1 : 0)) * 31;
        Boolean bool = this.f;
        return i + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        return "CollectingFlags{permissionsCollectingEnabled=" + this.a + ", featuresCollectingEnabled=" + this.b + ", googleAid=" + this.c + ", simInfo=" + this.d + ", huaweiOaid=" + this.e + ", sslPinning=" + this.f + '}';
    }
}
