package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class bh implements y03 {
    public final Context a;
    public final bf5 b;

    public bh(Context context, bf5 bf5Var) {
        this.a = context;
        this.b = bf5Var;
    }

    @Override // yads.y03
    public final d13 a(d9 d9Var, e4 e4Var, o03 o03Var) {
        return new ah(this.a, d9Var, e4Var, this.b, o03Var);
    }
}
