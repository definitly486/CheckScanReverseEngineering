package yads;

import java.util.LinkedHashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class r7 {
    public final int a;
    public final boolean b;
    public final boolean c;
    public final LinkedHashMap d;
    public final Set e;

    public r7(int i, boolean z, boolean z2, LinkedHashMap linkedHashMap, Set set) {
        this.a = i;
        this.b = z;
        this.c = z2;
        this.d = linkedHashMap;
        this.e = set;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r7)) {
            return false;
        }
        r7 r7Var = (r7) obj;
        return this.a == r7Var.a && this.b == r7Var.b && this.c == r7Var.c && defpackage.aa4.e(this.d, r7Var.d) && defpackage.aa4.e(this.e, r7Var.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + ((this.d.hashCode() + m7.a(m7.a(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c)) * 31);
    }

    public final String toString() {
        return "AdQualityVerificationPolicy(usagePercent=" + this.a + ", enabled=" + this.b + ", blockAdOnInternalError=" + this.c + ", adNetworksCustomParameters=" + this.d + ", enabledAdUnits=" + this.e + ")";
    }
}
