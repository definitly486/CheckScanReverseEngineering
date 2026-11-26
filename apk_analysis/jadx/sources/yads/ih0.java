package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ih0 {
    public final ih0 a;
    public final mf0 b;
    public final boolean c;
    public final List d;

    public ih0(ih0 ih0Var, mf0 mf0Var, boolean z, List list) {
        this.a = ih0Var;
        this.b = mf0Var;
        this.c = z;
        this.d = list;
    }

    public static ih0 a(ih0 ih0Var, ih0 ih0Var2, mf0 mf0Var, boolean z, List list, int i) {
        if ((i & 1) != 0) {
            ih0Var2 = ih0Var.a;
        }
        if ((i & 2) != 0) {
            mf0Var = ih0Var.b;
        }
        if ((i & 4) != 0) {
            z = ih0Var.c;
        }
        if ((i & 8) != 0) {
            list = ih0Var.d;
        }
        ih0Var.getClass();
        return new ih0(ih0Var2, mf0Var, z, list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ih0)) {
            return false;
        }
        ih0 ih0Var = (ih0) obj;
        return defpackage.aa4.e(this.a, ih0Var.a) && defpackage.aa4.e(this.b, ih0Var.b) && this.c == ih0Var.c && defpackage.aa4.e(this.d, ih0Var.d);
    }

    public final int hashCode() {
        ih0 ih0Var = this.a;
        return this.d.hashCode() + m7.a((this.b.hashCode() + ((ih0Var == null ? 0 : ih0Var.hashCode()) * 31)) * 31, 31, this.c);
    }

    public final String toString() {
        return "DebugPanelUiState(prevState=" + this.a + ", destination=" + this.b + ", isLoading=" + this.c + ", uiData=" + this.d + ")";
    }
}
