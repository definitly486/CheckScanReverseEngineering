package yads;

import defpackage.hb7;
import defpackage.up7;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class gg0 {
    public static final fg0 Companion = new fg0();
    public static final defpackage.cl4[] g;
    public final we0 a;
    public final ng0 b;
    public final List c;
    public final df0 d;
    public final List e;
    public final List f;

    static {
        defpackage.po4 po4Var = defpackage.po4.PUBLICATION;
        int i = 2;
        g = new defpackage.cl4[]{null, null, defpackage.nm4.a(po4Var, new hb7(1)), null, defpackage.nm4.a(po4Var, new defpackage.q14(i)), defpackage.nm4.a(po4Var, new defpackage.oz4(i))};
    }

    public gg0(int i, we0 we0Var, ng0 ng0Var, List list, df0 df0Var, List list2, List list3) {
        if (63 != (i & 63)) {
            defpackage.r96.f(eg0.b, i, 63);
            throw null;
        }
        this.a = we0Var;
        this.b = ng0Var;
        this.c = list;
        this.d = df0Var;
        this.e = list2;
        this.f = list3;
    }

    public static final /* synthetic */ defpackage.df4 a() {
        return new defpackage.mr(h64.a);
    }

    public static final /* synthetic */ defpackage.df4 b() {
        return new defpackage.mr(la4.a);
    }

    public static final /* synthetic */ defpackage.df4 c() {
        return new defpackage.mr(v94.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gg0)) {
            return false;
        }
        gg0 gg0Var = (gg0) obj;
        return defpackage.aa4.e(this.a, gg0Var.a) && defpackage.aa4.e(this.b, gg0Var.b) && defpackage.aa4.e(this.c, gg0Var.c) && defpackage.aa4.e(this.d, gg0Var.d) && defpackage.aa4.e(this.e, gg0Var.e) && defpackage.aa4.e(this.f, gg0Var.f);
    }

    public final int hashCode() {
        return this.f.hashCode() + defpackage.e2.b(this.e, (this.d.hashCode() + defpackage.e2.b(this.c, (this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31)) * 31, 31);
    }

    public final String toString() {
        return "DebugPanelReportData(appData=" + this.a + ", sdkData=" + this.b + ", networksData=" + this.c + ", consentsData=" + this.d + ", sdkLogs=" + this.e + ", networkLogs=" + this.f + ")";
    }

    public gg0(we0 we0Var, ng0 ng0Var, List list, df0 df0Var, List list2, List list3) {
        this.a = we0Var;
        this.b = ng0Var;
        this.c = list;
        this.d = df0Var;
        this.e = list2;
        this.f = list3;
    }
}
