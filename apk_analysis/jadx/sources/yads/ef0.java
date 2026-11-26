package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ef0 {
    public final we0 a;
    public final ng0 b;
    public final ld0 c;
    public final ne0 d;
    public final df0 e;
    public final of0 f;
    public final List g;
    public final List h;

    public ef0(we0 we0Var, ng0 ng0Var, ld0 ld0Var, ne0 ne0Var, df0 df0Var, of0 of0Var, List list, List list2) {
        this.a = we0Var;
        this.b = ng0Var;
        this.c = ld0Var;
        this.d = ne0Var;
        this.e = df0Var;
        this.f = of0Var;
        this.g = list;
        this.h = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ef0)) {
            return false;
        }
        ef0 ef0Var = (ef0) obj;
        return defpackage.aa4.e(this.a, ef0Var.a) && defpackage.aa4.e(this.b, ef0Var.b) && defpackage.aa4.e(this.c, ef0Var.c) && defpackage.aa4.e(this.d, ef0Var.d) && defpackage.aa4.e(this.e, ef0Var.e) && defpackage.aa4.e(this.f, ef0Var.f) && defpackage.aa4.e(this.g, ef0Var.g) && defpackage.aa4.e(this.h, ef0Var.h);
    }

    public final int hashCode() {
        return this.h.hashCode() + defpackage.e2.b(this.g, (this.f.hashCode() + ((this.e.hashCode() + defpackage.tg.d(this.d.a, (this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31, 31)) * 31)) * 31, 31);
    }

    public final String toString() {
        return "DebugPanelData(appData=" + this.a + ", sdkData=" + this.b + ", networkSettingsData=" + this.c + ", adaptersData=" + this.d + ", consentsData=" + this.e + ", debugErrorIndicatorData=" + this.f + ", adUnits=" + this.g + ", alerts=" + this.h + ")";
    }
}
