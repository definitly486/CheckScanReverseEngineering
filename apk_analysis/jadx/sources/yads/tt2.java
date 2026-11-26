package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class tt2 {
    public final mt2 a;
    public final ea b;

    public tt2(Context context, e4 e4Var, bf5 bf5Var, mt2 mt2Var) {
        ea eaVar = new ea(context, e4Var, bf5Var);
        this.a = mt2Var;
        this.b = eaVar;
    }

    public final void a(long j) {
        mt2 mt2Var = this.a;
        if (j <= mt2Var.c) {
            ea.a(this.b, mt2Var.b, i16.FALSE_CLICK, null, 12);
        }
    }
}
