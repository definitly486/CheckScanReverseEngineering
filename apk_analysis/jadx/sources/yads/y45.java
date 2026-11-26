package yads;

import defpackage.j59;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class y45 {
    public static final x45 b = new x45();
    public static final Object c = new Object();
    public static volatile y45 d;
    public final WeakHashMap a = new WeakHashMap();

    public final void a(cp cpVar, String str) {
        synchronized (c) {
            this.a.put(cpVar, str);
            j59 j59Var = j59.a;
        }
    }
}
