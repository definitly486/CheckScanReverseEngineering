package yads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import yads.ao2;

/* JADX INFO: loaded from: classes6.dex */
public final class ao2 {
    public final LinkedHashSet a = new LinkedHashSet();
    public final ArrayList b = new ArrayList();
    public List c = defpackage.kx2.b;
    public final ArrayList d = new ArrayList();
    public final ArrayList e = new ArrayList();
    public boolean f = true;

    public final void a() {
        this.f = false;
        if (this.a.isEmpty()) {
            return;
        }
        if (!this.f) {
            this.e.clear();
            this.e.addAll(this.c);
            this.e.addAll(this.b);
            this.f = true;
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((defpackage.bm3) it.next()).invoke(this.e, this.d);
        }
    }

    public final void a(Throwable th) {
        this.d.add(th);
        a();
    }

    public final void a(RuntimeException runtimeException) {
        this.b.add(runtimeException);
        a();
    }

    public final tp0 a(final defpackage.bm3 bm3Var) {
        this.a.add(bm3Var);
        if (!this.f) {
            this.e.clear();
            this.e.addAll(this.c);
            this.e.addAll(this.b);
            this.f = true;
        }
        bm3Var.invoke(this.e, this.d);
        return new tp0() { // from class: wn9
            @Override // java.lang.AutoCloseable, java.io.Closeable
            public final void close() {
                ao2.a(this.b, bm3Var);
            }
        };
    }

    public static final void a(ao2 ao2Var, defpackage.bm3 bm3Var) {
        ao2Var.a.remove(bm3Var);
    }
}
