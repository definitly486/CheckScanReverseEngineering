package yads;

import defpackage.ta8;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class dn3 implements ri6 {
    public final ws5 a;
    public final defpackage.xb4 b;

    public dn3(ws5 ws5Var, defpackage.xb4 xb4Var, mi6 mi6Var) {
        this.a = ws5Var;
        this.b = xb4Var;
    }

    @Override // yads.ri6
    public final Object a(en4 en4Var) {
        int i = en4Var.a;
        b95 b95Var = new b95(en4Var.b);
        Map map = en4Var.c;
        if (map == null) {
            map = defpackage.mx2.b;
        }
        String str = (String) this.a.a(new a95(i, b95Var, map));
        if (str == null || ta8.M(str)) {
            return null;
        }
        defpackage.xb4 xb4Var = this.b;
        xb4Var.getClass();
        return (dg0) xb4Var.a(dg0.Companion.serializer(), str);
    }
}
