package yads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class y86 implements ef6 {
    public final String a;
    public final iq3 b;
    public final String c;
    public final HashMap d;

    public y86(String str, iq3 iq3Var, String str2, HashMap map) {
        this.a = str;
        this.b = iq3Var;
        this.c = str2;
        this.d = map;
    }

    @Override // yads.ef6
    public final Map a() {
        return Collections.unmodifiableMap(this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y86)) {
            return false;
        }
        y86 y86Var = (y86) obj;
        return defpackage.aa4.e(this.a, y86Var.a) && defpackage.aa4.e(this.b, y86Var.b) && defpackage.aa4.e(this.c, y86Var.c) && defpackage.aa4.e(this.d, y86Var.d);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        iq3 iq3Var = this.b;
        int iHashCode2 = (iHashCode + (iq3Var == null ? 0 : iq3Var.hashCode())) * 31;
        String str = this.c;
        return this.d.hashCode() + ((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "Verification(vendor=" + this.a + ", javaScriptResource=" + this.b + ", parameters=" + this.c + ", events=" + this.d + ")";
    }
}
