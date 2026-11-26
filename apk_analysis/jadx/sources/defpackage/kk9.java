package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class kk9 implements ws6 {
    public final ws6<Executor> a;
    public final ws6<f13> b;
    public final pe7 c;
    public final ws6<eh8> d;

    public kk9(ws6 ws6Var, ws6 ws6Var2, pe7 pe7Var, ws6 ws6Var3) {
        this.a = ws6Var;
        this.b = ws6Var2;
        this.c = pe7Var;
        this.d = ws6Var3;
    }

    @Override // defpackage.ws6
    public final Object get() {
        return new jk9(this.a.get(), this.b.get(), (pk9) this.c.get(), this.d.get());
    }
}
