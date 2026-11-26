package yads;

import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class n7 {
    public final boolean a;
    public final boolean b;
    public final String c;
    public final long d;
    public final int e;
    public final boolean f;
    public final Set g;
    public final Map h;

    public n7(boolean z, boolean z2, String str, long j, int i, boolean z3, Set set, Map map) {
        this.a = z;
        this.b = z2;
        this.c = str;
        this.d = j;
        this.e = i;
        this.f = z3;
        this.g = set;
        this.h = map;
    }

    public final boolean a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n7)) {
            return false;
        }
        n7 n7Var = (n7) obj;
        return this.a == n7Var.a && this.b == n7Var.b && defpackage.aa4.e(this.c, n7Var.c) && this.d == n7Var.d && this.e == n7Var.e && this.f == n7Var.f && defpackage.aa4.e(this.g, n7Var.g) && defpackage.aa4.e(this.h, n7Var.h);
    }

    public final int hashCode() {
        return this.h.hashCode() + ((this.g.hashCode() + m7.a(i96.a(this.e, defpackage.vg.b(l4.a(m7.a(Boolean.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31), 31, this.f)) * 31);
    }

    public final String toString() {
        return "AdQualityVerificationConfiguration(enabled=" + this.a + ", debug=" + this.b + ", apiKey=" + this.c + ", validationTimeoutInSec=" + this.d + ", usagePercent=" + this.e + ", blockAdOnInternalError=" + this.f + ", enabledAdUnits=" + this.g + ", adNetworksCustomParameters=" + this.h + ")";
    }
}
