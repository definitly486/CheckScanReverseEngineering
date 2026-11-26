package defpackage;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class w29<T> implements q29<T> {
    public final hz a;
    public final String b;
    public final iy2 c;
    public final d29<T, byte[]> d;
    public final d39 e;

    public w29(hz hzVar, String str, iy2 iy2Var, d29 d29Var, d39 d39Var) {
        this.a = hzVar;
        this.b = str;
        this.c = iy2Var;
        this.d = d29Var;
        this.e = d39Var;
    }

    @Override // defpackage.q29
    public final void a(ry ryVar) {
        b(ryVar, new ki0(4));
    }

    @Override // defpackage.q29
    public final void b(ry ryVar, f39 f39Var) {
        String str = this.b;
        if (str == null) {
            o2.d("Null transportName");
            return;
        }
        d29<T, byte[]> d29Var = this.d;
        if (d29Var == null) {
            o2.d("Null transformer");
            return;
        }
        gz gzVar = new gz(this.a, str, ryVar, d29Var, this.c);
        d39 d39Var = this.e;
        ie7 ie7Var = d39Var.c;
        hz hzVar = gzVar.a;
        ry ryVar2 = gzVar.c;
        hz hzVarE = hzVar.e(ryVar2.b);
        sy.a aVar = new sy.a();
        aVar.f = new HashMap();
        aVar.d = Long.valueOf(d39Var.a.getTime());
        aVar.e = Long.valueOf(d39Var.b.getTime());
        String str2 = gzVar.b;
        if (str2 == null) {
            o2.d("Null transportName");
            return;
        }
        aVar.a = str2;
        aVar.c = new sx2(gzVar.e, gzVar.d.apply(ryVar2.a));
        ryVar2.getClass();
        aVar.b = null;
        dz dzVar = ryVar2.c;
        if (dzVar != null && dzVar.a() != null) {
            aVar.g = ryVar2.c.a();
        }
        ryVar2.getClass();
        ie7Var.a(hzVarE, aVar.b(), f39Var);
    }
}
