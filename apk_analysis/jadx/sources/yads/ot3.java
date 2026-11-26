package yads;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ot3 {
    public final ArrayList a;
    public final mt2 b;
    public final List c;
    public final String d;
    public final long e;
    public final boolean f;

    public ot3(ArrayList arrayList, mt2 mt2Var, List list, String str, long j, boolean z) {
        this.a = arrayList;
        this.b = mt2Var;
        this.c = list;
        this.d = str;
        this.e = j;
        this.f = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ot3)) {
            return false;
        }
        ot3 ot3Var = (ot3) obj;
        return defpackage.aa4.e(this.a, ot3Var.a) && defpackage.aa4.e(this.b, ot3Var.b) && defpackage.aa4.e(this.c, ot3Var.c) && defpackage.aa4.e(this.d, ot3Var.d) && this.e == ot3Var.e && this.f == ot3Var.f;
    }

    public final int hashCode() {
        ArrayList arrayList = this.a;
        int iHashCode = (arrayList == null ? 0 : arrayList.hashCode()) * 31;
        mt2 mt2Var = this.b;
        int iB = defpackage.e2.b(this.c, (iHashCode + (mt2Var == null ? 0 : mt2Var.hashCode())) * 31, 31);
        String str = this.d;
        return Boolean.hashCode(this.f) + defpackage.vg.b((iB + (str != null ? str.hashCode() : 0)) * 31, 31, this.e);
    }

    public final String toString() {
        return "Link(actions=" + this.a + ", falseClick=" + this.b + ", trackingUrls=" + this.c + ", url=" + this.d + ", clickableDelay=" + this.e + ", isWebViewEnabled=" + this.f + ")";
    }
}
