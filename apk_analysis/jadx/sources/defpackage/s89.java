package defpackage;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class s89 implements ws6 {
    public final ws6<Context> a;
    public final ws6<e00> b;
    public final ws6<f13> c;
    public final pe7 d;
    public final ws6<Executor> e;
    public final ws6<eh8> f;
    public final ws6<vl1> g;

    public s89(ws6 ws6Var, ws6 ws6Var2, ws6 ws6Var3, pe7 pe7Var, ws6 ws6Var4, ws6 ws6Var5, ws6 ws6Var6) {
        this.a = ws6Var;
        this.b = ws6Var2;
        this.c = ws6Var3;
        this.d = pe7Var;
        this.e = ws6Var4;
        this.f = ws6Var5;
        this.g = ws6Var6;
    }

    @Override // defpackage.ws6
    public final Object get() {
        return new r89(this.a.get(), this.b.get(), this.c.get(), (pk9) this.d.get(), this.e.get(), this.f.get(), new vp2(), new c84(), this.g.get());
    }
}
