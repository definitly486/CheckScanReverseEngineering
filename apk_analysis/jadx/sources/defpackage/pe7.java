package defpackage;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class pe7 implements ws6 {
    public final ws6<Context> a;
    public final ws6<f13> b;
    public final oe7 c;

    public pe7(ws6 ws6Var, ws6 ws6Var2, oe7 oe7Var) {
        this.a = ws6Var;
        this.b = ws6Var2;
        this.c = oe7Var;
    }

    @Override // defpackage.ws6
    public final Object get() {
        return new ob4(this.a.get(), this.b.get(), (je7) this.c.get());
    }
}
