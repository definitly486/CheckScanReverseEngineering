package yads;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class vg6 {
    public final ug6 a;
    public final vr3 b;
    public final xx3 c;
    public final Map d;

    public vg6(ug6 ug6Var, vr3 vr3Var, xx3 xx3Var, Map map) {
        this.a = ug6Var;
        this.b = vr3Var;
        this.c = xx3Var;
        this.d = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vg6)) {
            return false;
        }
        vg6 vg6Var = (vg6) obj;
        return defpackage.aa4.e(this.a, vg6Var.a) && defpackage.aa4.e(this.b, vg6Var.b) && defpackage.aa4.e(this.c, vg6Var.c) && defpackage.aa4.e(this.d, vg6Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ViewSizeInfo(view=" + this.a + ", layoutParams=" + this.b + ", measured=" + this.c + ", additionalInfo=" + this.d + ")";
    }
}
