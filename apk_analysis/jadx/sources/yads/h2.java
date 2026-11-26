package yads;

import defpackage.j59;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class h2 {
    public static final Object b = new Object();
    public static volatile h2 c;
    public final HashMap a = new HashMap();

    public final f2 a(long j) {
        f2 f2Var;
        synchronized (b) {
            f2Var = (f2) this.a.remove(Long.valueOf(j));
        }
        return f2Var;
    }

    public final void a(long j, f2 f2Var) {
        synchronized (b) {
            this.a.put(Long.valueOf(j), f2Var);
            j59 j59Var = j59.a;
        }
    }
}
