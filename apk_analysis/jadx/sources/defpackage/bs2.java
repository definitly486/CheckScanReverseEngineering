package defpackage;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes3.dex */
public final class bs2 implements l29<Drawable> {
    public sj0 a;

    @Override // defpackage.l29
    public final k29 a(y82 y82Var) {
        if (y82Var == y82.MEMORY_CACHE) {
            return yn5.b;
        }
        sj0 sj0Var = this.a;
        if (sj0Var != null) {
            return sj0Var;
        }
        sj0 sj0Var2 = new sj0(1);
        this.a = sj0Var2;
        return sj0Var2;
    }
}
