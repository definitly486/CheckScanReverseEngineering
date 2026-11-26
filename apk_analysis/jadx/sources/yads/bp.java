package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public abstract class bp implements nz {
    public final Context a;
    public final d9 b;

    public bp(Context context, d9 d9Var) {
        this.a = context;
        this.b = d9Var;
    }

    @Override // yads.nz
    public final synchronized boolean a() {
        return false;
    }

    public abstract void b();

    public void c() {
        b();
        getClass().toString();
    }
}
