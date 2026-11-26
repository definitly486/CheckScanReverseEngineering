package yads;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class nt2 {
    public final n70 a;
    public final long b;
    public final q1 c;
    public final mt2 d;
    public final Map e;
    public final c f;

    public nt2(n70 n70Var, long j, q1 q1Var, mt2 mt2Var, Map map, c cVar) {
        this.a = n70Var;
        this.b = j;
        this.c = q1Var;
        this.d = mt2Var;
        this.e = map;
        this.f = cVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nt2)) {
            return false;
        }
        nt2 nt2Var = (nt2) obj;
        return this.a == nt2Var.a && this.b == nt2Var.b && this.c == nt2Var.c && defpackage.aa4.e(this.d, nt2Var.d) && defpackage.aa4.e(this.e, nt2Var.e) && defpackage.aa4.e(this.f, nt2Var.f);
    }

    public final int hashCode() {
        int iHashCode = (this.c.hashCode() + defpackage.vg.b(this.a.hashCode() * 31, 31, this.b)) * 31;
        mt2 mt2Var = this.d;
        int iC = defpackage.k.c(this.e, (iHashCode + (mt2Var == null ? 0 : mt2Var.hashCode())) * 31, 31);
        c cVar = this.f;
        return iC + (cVar != null ? cVar.hashCode() : 0);
    }

    public final String toString() {
        return "FalseClickData(adType=" + this.a + ", startTime=" + this.b + ", activityInteractionType=" + this.c + ", falseClick=" + this.d + ", reportData=" + this.e + ", abExperiments=" + this.f + ")";
    }
}
