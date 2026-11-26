package yads;

import android.content.Context;
import defpackage.j59;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class jo6 {
    public final zp4 a;
    public final Object b;
    public final ArrayList c;

    public jo6(Context context) {
        xp4 xp4Var = zp4.g;
        zp4 zp4Var = zp4.i;
        if (zp4Var == null) {
            synchronized (xp4Var) {
                zp4Var = zp4.i;
                if (zp4Var == null) {
                    zp4Var = new zp4(context);
                    zp4.i = zp4Var;
                }
            }
        }
        this.a = zp4Var;
        this.b = new Object();
        this.c = new ArrayList();
    }

    public final void a(d96 d96Var) {
        synchronized (this.b) {
            this.c.add(d96Var);
            this.a.b(d96Var);
            j59 j59Var = j59.a;
        }
    }
}
