package yads;

import defpackage.j59;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class dg6 {
    public final cg6 a;

    public dg6(o90 o90Var) {
        cg6 cg6Var = new cg6(o90Var);
        this.a = cg6Var;
        cg6Var.start();
    }

    public final void a(cd cdVar) {
        if (defpackage.aa4.e(cdVar.a, this.a.d) || cdVar.h) {
            return;
        }
        ts tsVar = this.a.c;
        tsVar.c.lock();
        try {
            if (!defpackage.aa4.e(cdVar.a, this.a.d) && !cdVar.h) {
                tsVar = this.a.c;
                tsVar.c.lock();
                try {
                    Iterator it = tsVar.b.iterator();
                    while (it.hasNext()) {
                        if (defpackage.aa4.e(((bg6) it.next()).c, cdVar.a)) {
                            it.remove();
                            break;
                        }
                    }
                    tsVar.c.unlock();
                    this.a.c.offer(new bg6(cdVar, -1));
                    j59 j59Var = j59.a;
                    return;
                } finally {
                    tsVar.c.unlock();
                }
            }
            tsVar.c.unlock();
        } catch (Throwable th) {
            tsVar.c.unlock();
            throw th;
        }
    }
}
