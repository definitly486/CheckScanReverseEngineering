package yads;

import defpackage.fh8;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class kh {
    public final ah a;
    public final o25 b;
    public final fw3 c;
    public final aw3 d;
    public final AtomicBoolean e = new AtomicBoolean(false);
    public final defpackage.cl4 f = new fh8(new defpackage.vo1(this, 7));

    public kh(ah ahVar, o25 o25Var, fw3 fw3Var, aw3 aw3Var) {
        this.a = ahVar;
        this.b = o25Var;
        this.c = fw3Var;
        this.d = aw3Var;
        ahVar.l = o25Var;
    }

    public static final i70 a(kh khVar) {
        return khVar.a.d();
    }
}
