package yads;

import android.content.Context;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class if5 implements Runnable {
    public static final CopyOnWriteArrayList g = new CopyOnWriteArrayList();
    public final bf5 b;
    public final defpackage.y22 c;
    public final m94 d;
    public final t5 e;
    public final Context f;

    public if5(Context context, bf5 bf5Var, defpackage.y22 y22Var) {
        m94 m94VarA = k94.a(bf5Var);
        t5 t5Var = new t5();
        this.b = bf5Var;
        this.c = y22Var;
        this.d = m94VarA;
        this.e = t5Var;
        this.f = context.getApplicationContext();
    }

    @Override // java.lang.Runnable
    public final void run() {
        rf5 rf5Var = new rf5(this.f, this.b, this.c, this.e, null, null, 4194288);
        g.add(rf5Var);
        defpackage.av0.c(this.c, null, null, new hf5(rf5Var, this, null), 3);
    }
}
