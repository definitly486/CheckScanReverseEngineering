package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class tl4 {
    public final td6 a;
    public final nf6 b;
    public final nl4 c;
    public final uj5 d;
    public final bw3 e;
    public final uk4 f;
    public final a15 g;
    public final bm4 h;
    public final yv4 i;
    public final yv4 j;
    public final u65 k;
    public final rl4 l;
    public yv4 m;

    public tl4(Context context, d9 d9Var, bf5 bf5Var, gr2 gr2Var, r96 r96Var, td6 td6Var, nf6 nf6Var, cb6 cb6Var, jf6 jf6Var, we3 we3Var, nl4 nl4Var, b05 b05Var, uj5 uj5Var, defpackage.y22 y22Var) {
        bw3 bw3Var = new bw3();
        this.a = td6Var;
        this.b = nf6Var;
        this.c = nl4Var;
        this.d = uj5Var;
        this.e = bw3Var;
        this.l = new rl4(this);
        em4 em4Var = new em4(nf6Var);
        this.f = new uk4(gr2Var);
        this.h = new bm4(gr2Var);
        ob6 ob6Var = new ob6();
        defpackage.nn1.u(ob6Var.a, new nb6[]{new cw4(nl4Var), new ie6(nf6Var), new sh6(new vk4(gr2Var), em4Var)});
        ml4 ml4Var = new ml4(context, d9Var, bf5Var, gr2Var, (ja6) defpackage.qn1.T(r96Var.a), em4Var, cb6Var, jf6Var, ob6Var, we3Var);
        b75 b75Var = new b75(gr2Var, (ja6) defpackage.qn1.T(r96Var.a), ob6Var);
        cm4 cm4Var = new cm4(gr2Var, td6Var);
        a15 a15Var = new a15(r96Var, new hc3(context, new kj4(d9Var), b05Var), y22Var);
        this.g = a15Var;
        this.j = new yv4(nf6Var, ml4Var, cm4Var, a15Var);
        this.i = new yv4(nf6Var, b75Var, cm4Var, a15Var);
        this.k = new u65(nf6Var, new sl4(this));
    }

    public final void a(yv4 yv4Var) {
        this.m = yv4Var;
        if (yv4Var != null) {
            yv4Var.e.a = this.l;
        }
        if (yv4Var != null) {
            yv4Var.b.a(yv4Var.e);
            yv4Var.b.play();
        }
    }
}
