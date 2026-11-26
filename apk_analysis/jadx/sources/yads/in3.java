package yads;

import defpackage.j59;
import defpackage.rm9;
import defpackage.y68;
import defpackage.z68;

/* JADX INFO: loaded from: classes6.dex */
public final class in3 {
    public final defpackage.y22 a = xn.a(rm9.b(), new i90());
    public final n43 b;
    public final xt5 c;
    public final r33 d;
    public final m23 e;
    public final k23 f;
    public final d53 g;
    public final rf0 h;
    public final va i;
    public final sa j;
    public final pa k;
    public final w64 l;
    public final defpackage.xg5 m;
    public final y68 n;
    public final defpackage.x81 o;
    public final defpackage.hd3 p;

    public in3(n43 n43Var, xt5 xt5Var, r33 r33Var, m23 m23Var, k23 k23Var, d53 d53Var, rf0 rf0Var, va vaVar, sa saVar, pa paVar, w64 w64Var) {
        this.b = n43Var;
        this.c = xt5Var;
        this.d = r33Var;
        this.e = m23Var;
        this.f = k23Var;
        this.g = d53Var;
        this.h = rf0Var;
        this.i = vaVar;
        this.j = saVar;
        this.k = paVar;
        this.l = w64Var;
        z68 z68VarA = defpackage.px.a(new ih0(null, kf0.b, false, defpackage.kx2.b));
        this.m = z68VarA;
        this.n = defpackage.bf3.b(z68VarA);
        defpackage.mu0 mu0VarA = defpackage.l91.a(0, null, null, 7);
        this.o = mu0VarA;
        this.p = new defpackage.z81(mu0VarA, false);
    }

    public final void a(ah0 ah0Var) {
        Object value;
        Object value2;
        Object value3;
        Object value4;
        if (ah0Var instanceof sg0) {
            defpackage.av0.c(this.a, null, null, new hn3(this, null), 3);
            return;
        }
        if (ah0Var instanceof yg0) {
            defpackage.av0.c(this.a, null, null, new fn3(this, null), 3);
            return;
        }
        if (ah0Var instanceof wg0) {
            xt5 xt5Var = this.c;
            boolean z = !xt5Var.a.a.a().e.a;
            zg5 zg5Var = xt5Var.a.a.e.a;
            zg5Var.getClass();
            synchronized (zg5.k) {
                zg5Var.e = z;
                zg5Var.f = z;
                zg5Var.g = z;
                j59 j59Var = j59.a;
            }
            defpackage.av0.c(this.a, null, null, new hn3(this, null), 3);
            return;
        }
        if (ah0Var instanceof vg0) {
            ih0 ih0Var = ((ih0) this.m.getValue()).a;
            if (ih0Var == null) {
                defpackage.av0.c(this.a, null, null, new en3(this, bh0.a, null), 3);
                return;
            }
            ih0 ih0VarA = ih0.a(ih0Var, null, null, false, null, 11);
            defpackage.xg5 xg5Var = this.m;
            do {
                value4 = xg5Var.getValue();
            } while (!xg5Var.a(value4, ih0VarA));
            return;
        }
        if (ah0Var instanceof ug0) {
            jf0 jf0Var = jf0.b;
            ih0 ih0Var2 = (ih0) this.m.getValue();
            ih0 ih0VarA2 = ih0.a(ih0Var2, ih0Var2, jf0Var, false, null, 12);
            defpackage.xg5 xg5Var2 = this.m;
            do {
                value3 = xg5Var2.getValue();
            } while (!xg5Var2.a(value3, ih0VarA2));
            defpackage.av0.c(this.a, null, null, new hn3(this, null), 3);
            return;
        }
        if (ah0Var instanceof tg0) {
            hf0 hf0Var = new hf0(((tg0) ah0Var).a);
            ih0 ih0Var3 = (ih0) this.m.getValue();
            ih0 ih0VarA3 = ih0.a(ih0Var3, ih0Var3, hf0Var, false, null, 12);
            defpackage.xg5 xg5Var3 = this.m;
            do {
                value2 = xg5Var3.getValue();
            } while (!xg5Var3.a(value2, ih0VarA3));
            defpackage.av0.c(this.a, null, null, new hn3(this, null), 3);
            return;
        }
        if (!(ah0Var instanceof xg0)) {
            if (ah0Var instanceof zg0) {
                defpackage.av0.c(this.a, null, null, new gn3(this, ((zg0) ah0Var).a, null), 3);
                return;
            }
            return;
        }
        mf0 mf0Var = ((ih0) this.m.getValue()).b;
        rh0 rh0Var = ((xg0) ah0Var).a;
        mf0 if0Var = mf0Var instanceof hf0 ? new if0(rh0Var) : new lf0(rh0Var.a);
        ih0 ih0Var4 = (ih0) this.m.getValue();
        ih0 ih0VarA4 = ih0.a(ih0Var4, ih0Var4, if0Var, false, null, 12);
        defpackage.xg5 xg5Var4 = this.m;
        do {
            value = xg5Var4.getValue();
        } while (!xg5Var4.a(value, ih0VarA4));
        defpackage.av0.c(this.a, null, null, new hn3(this, null), 3);
    }
}
