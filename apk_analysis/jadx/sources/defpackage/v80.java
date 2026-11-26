package defpackage;

import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class v80 {
    public final View a;
    public final List<View> b;
    public final k80 c;
    public final t86 d;

    public v80(View view, k80 k80Var) {
        t86 t86Var = t86.ALIGNMENT;
        view.getClass();
        k80Var.getClass();
        t86Var.getClass();
        this.a = view;
        this.b = kx2.b;
        this.c = k80Var;
        this.d = t86Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v80)) {
            return false;
        }
        v80 v80Var = (v80) obj;
        return aa4.e(this.a, v80Var.a) && aa4.e(this.b, v80Var.b) && this.c == v80Var.c && this.d == v80Var.d;
    }

    public final int hashCode() {
        return Integer.hashCode(0) + ej0.b(0, (this.d.hashCode() + ej0.b(0, ej0.b(0, (this.c.hashCode() + e2.b(this.b, this.a.hashCode() * 31, 31)) * 31, 31), 31)) * 31, 31);
    }

    public final String toString() {
        return "BalloonPlacement(anchor=" + this.a + ", subAnchors=" + this.b + ", align=" + this.c + ", xOff=0, yOff=0, type=" + this.d + ", width=0, height=0)";
    }
}
