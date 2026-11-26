package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class zq2 {
    public static final Object c = new Object();
    public static volatile zq2 d;
    public final yq2 a = new yq2();
    public ok5 b;

    public final yv a(Context context) {
        ok5 ok5VarA;
        synchronized (c) {
            ok5VarA = this.b;
            if (ok5VarA == null) {
                ok5VarA = this.a.a(context);
                this.b = ok5VarA;
            }
        }
        return ok5VarA;
    }
}
