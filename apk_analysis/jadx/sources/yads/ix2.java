package yads;

import android.content.Context;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class ix2 {
    public final t5 a;
    public final al4 b;
    public final zl4 c;
    public final Object d;

    public ix2(Context context, t5 t5Var) {
        al4 al4Var = new al4(context);
        zl4 zl4Var = new zl4();
        this.a = t5Var;
        this.b = al4Var;
        this.c = zl4Var;
        this.d = new Object();
    }

    public final void a() {
        synchronized (this.d) {
            this.b.a();
            j59 j59Var = j59.a;
        }
    }
}
