package yads;

import defpackage.j59;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class tp4 {
    public final Object a = new Object();
    public final WeakHashMap b = new WeakHashMap();

    public final void a(d96 d96Var) {
        synchronized (this.a) {
            this.b.put(d96Var, null);
            j59 j59Var = j59.a;
        }
    }

    public final void b() {
        ArrayList<d96> arrayList;
        synchronized (this.a) {
            arrayList = new ArrayList(this.b.keySet());
            this.b.clear();
            j59 j59Var = j59.a;
        }
        for (d96 d96Var : arrayList) {
            if (d96Var != null) {
                d96Var.a();
            }
        }
    }

    public final boolean a() {
        boolean z;
        synchronized (this.a) {
            z = !this.b.isEmpty();
        }
        return z;
    }

    public final void b(d96 d96Var) {
        synchronized (this.a) {
            this.b.remove(d96Var);
        }
    }
}
