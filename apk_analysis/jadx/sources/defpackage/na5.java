package defpackage;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class na5 implements ws6 {
    public final e64 a;
    public final m62 b;

    public na5(e64 e64Var, m62 m62Var) {
        this.a = e64Var;
        this.b = m62Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ws6
    public final Object get() {
        return new ma5((Context) this.a.a, (l62) this.b.get());
    }
}
