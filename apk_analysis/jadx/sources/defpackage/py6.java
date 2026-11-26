package defpackage;

import java.lang.ref.Reference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class py6 {
    public final long a;
    public final do8 b;
    public final oy6 c;
    public final ConcurrentLinkedQueue<ly6> d;

    public py6(ho8 ho8Var) {
        ho8Var.getClass();
        TimeUnit.MINUTES.getClass();
        this.a = 300000000000L;
        this.b = ho8Var.d();
        this.c = new oy6(this, me0.d(new StringBuilder(), gb9.g, " ConnectionPool"));
        this.d = new ConcurrentLinkedQueue<>();
    }

    /* JADX WARN: Code duplicated, block: B:30:0x002a A[SYNTHETIC] */
    public final boolean a(l9 l9Var, jy6 jy6Var, ArrayList arrayList, boolean z) {
        Iterator<ly6> it = this.d.iterator();
        while (true) {
            if (!it.hasNext()) {
                return false;
            }
            ly6 next = it.next();
            next.getClass();
            synchronized (next) {
                if (z) {
                    try {
                        if (next.g != null) {
                            if (next.i(l9Var, arrayList)) {
                                jy6Var.b(next);
                                return true;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                } else if (next.i(l9Var, arrayList)) {
                    jy6Var.b(next);
                    return true;
                }
                j59 j59Var = j59.a;
            }
        }
    }

    public final int b(ly6 ly6Var, long j) {
        byte[] bArr = gb9.a;
        ArrayList arrayList = ly6Var.p;
        int i = 0;
        while (i < arrayList.size()) {
            Reference reference = (Reference) arrayList.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                String str = "A connection to " + ly6Var.b.a.h + " was leaked. Did you forget to close a response body?";
                z86 z86Var = z86.a;
                z86.a.k(((jy6.b) reference).a, str);
                arrayList.remove(i);
                ly6Var.j = true;
                if (arrayList.isEmpty()) {
                    ly6Var.q = j - this.a;
                    return 0;
                }
            }
        }
        return arrayList.size();
    }
}
