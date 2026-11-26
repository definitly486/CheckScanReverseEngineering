package yads;

import defpackage.ua7;
import defpackage.up7;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class wd0 {
    public static final vd0 Companion = new vd0();
    public static final defpackage.cl4[] c;
    public final List a;
    public final List b;

    static {
        defpackage.po4 po4Var = defpackage.po4.PUBLICATION;
        c = new defpackage.cl4[]{defpackage.nm4.a(po4Var, new defpackage.qt3(2)), defpackage.nm4.a(po4Var, new ua7(1))};
    }

    public wd0(int i, List list, List list2) {
        if (3 != (i & 3)) {
            defpackage.r96.f(ud0.b, i, 3);
            throw null;
        }
        this.a = list;
        this.b = list2;
    }

    public static final /* synthetic */ defpackage.df4 a() {
        return new defpackage.mr(ce0.a);
    }

    public static final /* synthetic */ defpackage.df4 b() {
        return new defpackage.mr(pd0.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wd0)) {
            return false;
        }
        wd0 wd0Var = (wd0) obj;
        return defpackage.aa4.e(this.a, wd0Var.a) && defpackage.aa4.e(this.b, wd0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DebugPanelAdUnitMediation(waterfall=" + this.a + ", bidding=" + this.b + ")";
    }
}
