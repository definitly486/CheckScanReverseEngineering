package defpackage;

import com.posthog.internal.c;

/* JADX INFO: loaded from: classes4.dex */
public final class xr6 {
    public final iv4 a;
    public final c b;

    public xr6(iv4 iv4Var, c cVar) {
        this.a = iv4Var;
        this.b = cVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xr6)) {
            return false;
        }
        xr6 xr6Var = (xr6) obj;
        return this.a == xr6Var.a && aa4.e(this.b, xr6Var.b);
    }

    public final int hashCode() {
        iv4 iv4Var = this.a;
        int iHashCode = (iv4Var == null ? 0 : iv4Var.hashCode()) * 31;
        c cVar = this.b;
        return iHashCode + (cVar != null ? cVar.hashCode() : 0);
    }

    public final String toString() {
        return "PropertyGroup(type=" + this.a + ", values=" + this.b + ')';
    }
}
