package yads;

import android.content.Context;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public abstract class w93 extends bp implements g4 {
    public final h9 c;

    public w93(Context context, d9 d9Var) {
        h9 h9Var = new h9();
        super(context, d9Var);
        this.c = h9Var;
        e55 e55Var = h9Var.a;
        defpackage.ze4 ze4Var = h9.b[0];
        e55Var.getClass();
        e55Var.a = new WeakReference(this);
    }

    @Override // yads.bp
    public final synchronized void b() {
        e55 e55Var = this.c.a;
        defpackage.ze4 ze4Var = h9.b[0];
        e55Var.getClass();
        e55Var.a = new WeakReference(null);
    }
}
