package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class jy3 implements pn0 {
    public final int a;
    public final dy3 b;

    public jy3(f80 f80Var, int i) {
        dy3 dy3Var = new dy3(f80Var);
        this.a = i;
        this.b = dy3Var;
    }

    @Override // yads.pn0
    public final boolean a(Context context) {
        int iC = eh6.c(context);
        int iE = eh6.e(context);
        Float fA = this.b.a();
        return iE - (fA != null ? defpackage.w65.b(fA.floatValue() * ((float) iC)) : 0) >= this.a;
    }
}
