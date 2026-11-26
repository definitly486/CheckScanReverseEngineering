package yads;

import defpackage.j59;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class u40 implements defpackage.s22 {
    public final List b;
    public final s22.a c = s22.a.b;

    public u40(List list) {
        this.b = list;
    }

    @Override // defpackage.o22
    public final Object fold(Object obj, defpackage.bm3 bm3Var) {
        return o22.a.C0306a.a(this, obj, bm3Var);
    }

    @Override // defpackage.o22
    public final o22.a get(o22.b bVar) {
        return o22.a.C0306a.b(this, bVar);
    }

    @Override // o22.a
    public final o22.b getKey() {
        return this.c;
    }

    @Override // defpackage.s22
    public final void handleException(defpackage.o22 o22Var, Throwable th) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            try {
                ((defpackage.s22) it.next()).handleException(o22Var, th);
                j59 j59Var = j59.a;
            } catch (Throwable unused) {
            }
        }
    }

    @Override // defpackage.o22
    public final defpackage.o22 minusKey(o22.b bVar) {
        return o22.a.C0306a.c(this, bVar);
    }

    @Override // defpackage.o22
    public final defpackage.o22 plus(defpackage.o22 o22Var) {
        return o22.a.C0306a.d(this, o22Var);
    }
}
