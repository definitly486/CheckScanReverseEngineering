package yads;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class g1 {
    public static final Object c = new Object();
    public static volatile g1 d;
    public final ConcurrentHashMap a = new ConcurrentHashMap();
    public final l13 b = new l13();

    public final void a(n8 n8Var, Object obj) {
        defpackage.xp1 xp1Var = (defpackage.xp1) this.a.remove(this.b.a(n8Var));
        if (xp1Var != null) {
            xp1Var.f(obj);
        }
    }
}
