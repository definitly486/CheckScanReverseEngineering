package yads;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class vf0 {
    public final we0 a;
    public final ng0 b;
    public final ArrayList c;
    public final df0 d;
    public final of0 e;
    public final wf0 f;

    public vf0(we0 we0Var, ng0 ng0Var, ArrayList arrayList, df0 df0Var, of0 of0Var, wf0 wf0Var) {
        this.a = we0Var;
        this.b = ng0Var;
        this.c = arrayList;
        this.d = df0Var;
        this.e = of0Var;
        this.f = wf0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vf0)) {
            return false;
        }
        vf0 vf0Var = (vf0) obj;
        return defpackage.aa4.e(this.a, vf0Var.a) && defpackage.aa4.e(this.b, vf0Var.b) && defpackage.aa4.e(this.c, vf0Var.c) && defpackage.aa4.e(this.d, vf0Var.d) && defpackage.aa4.e(this.e, vf0Var.e) && defpackage.aa4.e(this.f, vf0Var.f);
    }

    public final int hashCode() {
        int iHashCode = (this.e.hashCode() + ((this.d.hashCode() + defpackage.tg.d(this.c, (this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31)) * 31)) * 31;
        wf0 wf0Var = this.f;
        return iHashCode + (wf0Var == null ? 0 : wf0Var.hashCode());
    }

    public final String toString() {
        return "DebugPanelLocalData(appData=" + this.a + ", sdkData=" + this.b + ", mediationNetworksData=" + this.c + ", consentsData=" + this.d + ", debugErrorIndicatorData=" + this.e + ", logsData=" + this.f + ")";
    }
}
