package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class qi2 implements ws6 {
    public final ws6<Executor> a;
    public final ws6<e00> b;
    public final pe7 c;
    public final ws6<f13> d;
    public final ws6<eh8> e;

    public qi2(ws6 ws6Var, ws6 ws6Var2, pe7 pe7Var, ws6 ws6Var3, ws6 ws6Var4) {
        this.a = ws6Var;
        this.b = ws6Var2;
        this.c = pe7Var;
        this.d = ws6Var3;
        this.e = ws6Var4;
    }

    @Override // defpackage.ws6
    public final Object get() {
        return new pi2(this.a.get(), this.b.get(), (pk9) this.c.get(), this.d.get(), this.e.get());
    }
}
