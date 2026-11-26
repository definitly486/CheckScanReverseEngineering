package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class o1 {
    public final e4 a;
    public final bf5 b;
    public final d9 c;
    public final nf4 d;
    public final Context e;
    public n1 f;
    public zh4 g;

    public o1(Context context, e4 e4Var, bf5 bf5Var, d9 d9Var, nf4 nf4Var) {
        Context applicationContext = context.getApplicationContext();
        n1 n1Var = new n1(applicationContext, e4Var, bf5Var, d9Var, nf4Var, null);
        this.a = e4Var;
        this.b = bf5Var;
        this.c = d9Var;
        this.d = nf4Var;
        this.e = applicationContext;
        this.f = n1Var;
    }
}
