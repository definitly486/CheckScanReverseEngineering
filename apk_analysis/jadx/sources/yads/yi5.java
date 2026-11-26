package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class yi5 implements ua5 {
    public final aj5 a;
    public final ea b;

    public yi5(Context context, e4 e4Var, bf5 bf5Var, aj5 aj5Var) {
        ea eaVar = new ea(context, e4Var, bf5Var);
        this.a = aj5Var;
        this.b = eaVar;
    }

    @Override // yads.ua5
    public final void a() {
        ea.a(this.b, this.a.b, i16.SERVER_SIDE_REWARD, null, 12);
    }
}
