package yads;

import defpackage.nl3;
import defpackage.zo7;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class wd2 implements zo7 {
    public final br0 a;
    public final fs2 b;
    public final nl3 c;
    public final nl3 d;

    public wd2(br0 br0Var, fs2 fs2Var, nl3 nl3Var, nl3 nl3Var2) {
        this.a = br0Var;
        this.b = fs2Var;
        this.c = nl3Var;
        this.d = nl3Var2;
    }

    public final wd2 a(nl3 nl3Var) {
        return new wd2(this.a, this.b, nl3Var, this.d);
    }

    public final wd2 b(nl3 nl3Var) {
        return new wd2(this.a, this.b, this.c, nl3Var);
    }

    @Override // defpackage.zo7
    public final Iterator iterator() {
        return new td2(this, this.a, this.b);
    }
}
