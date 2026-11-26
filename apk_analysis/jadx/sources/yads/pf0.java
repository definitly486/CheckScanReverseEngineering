package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class pf0 {
    public final List a;
    public final we0 b;
    public final og0 c;
    public final ld0 d;
    public final ne0 e;
    public final df0 f;
    public final of0 g;

    public pf0(List list, we0 we0Var, og0 og0Var, ld0 ld0Var, ne0 ne0Var, df0 df0Var, of0 of0Var) {
        this.a = list;
        this.b = we0Var;
        this.c = og0Var;
        this.d = ld0Var;
        this.e = ne0Var;
        this.f = df0Var;
        this.g = of0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pf0)) {
            return false;
        }
        pf0 pf0Var = (pf0) obj;
        return defpackage.aa4.e(this.a, pf0Var.a) && defpackage.aa4.e(this.b, pf0Var.b) && defpackage.aa4.e(this.c, pf0Var.c) && defpackage.aa4.e(this.d, pf0Var.d) && defpackage.aa4.e(this.e, pf0Var.e) && defpackage.aa4.e(this.f, pf0Var.f) && defpackage.aa4.e(this.g, pf0Var.g);
    }

    public final int hashCode() {
        return this.g.hashCode() + ((this.f.hashCode() + defpackage.tg.d(this.e.a, (this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31, 31)) * 31);
    }

    public final String toString() {
        return "DebugPanelFeedData(alertsData=" + this.a + ", appData=" + this.b + ", sdkIntegrationData=" + this.c + ", adNetworkSettingsData=" + this.d + ", adaptersData=" + this.e + ", consentsData=" + this.f + ", debugErrorIndicatorData=" + this.g + ")";
    }
}
