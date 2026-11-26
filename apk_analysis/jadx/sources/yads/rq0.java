package yads;

import defpackage.j59;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class rq0 {
    public int a;
    public cb1 b;
    public boolean c = true;
    public final ArrayList d = new ArrayList();
    public final /* synthetic */ vq0 e;

    public rq0(vq0 vq0Var) {
        this.e = vq0Var;
    }

    public final void a() {
        long j;
        cb1 cb1Var = this.b;
        if (cb1Var == null) {
            return;
        }
        long j2 = cb1Var.b;
        vq0 vq0Var = this.e;
        if (j2 != vq0Var.F) {
            vq0Var.b(j2, this.c);
        } else if (vq0Var.getChildCount() > 0) {
            try {
                en1 en1Var = (en1) this.e.o.f.getValue();
                List listUnmodifiableList = this.d;
                if (listUnmodifiableList != null && (!(listUnmodifiableList instanceof defpackage.re4) || (listUnmodifiableList instanceof defpackage.te4))) {
                    listUnmodifiableList = Collections.unmodifiableList(new ArrayList(listUnmodifiableList));
                }
                en1Var.a(cb1Var, listUnmodifiableList, vq0.a(this.e.z));
            } catch (qq5 e) {
                o01.a(this.e, e);
                vq0 vq0Var2 = this.e;
                bi2 bi2VarN = vq0Var2.n();
                if (bi2VarN != null) {
                    bi2VarN.b.clear();
                }
                sv5 sv5Var = (sv5) vq0Var2.n.x.getValue();
                String str = vq0Var2.O.a;
                synchronized (sv5Var.a) {
                    db1 db1Var = vq0Var2.Q;
                    if (db1Var != null) {
                        if (db1Var.c.isEmpty()) {
                            int i = db1.i;
                            j = -1;
                        } else {
                            j = ((cb1) db1Var.c.get(0)).b;
                        }
                        bi2 bi2VarN2 = vq0Var2.n();
                        if (bi2VarN2 != null) {
                            j = bi2VarN2.a;
                        }
                        vq0Var2.b(j, true);
                    }
                }
            }
        }
        this.b = null;
        this.c = true;
        this.d.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(cb1 cb1Var, n32 n32Var, boolean z) {
        List<n32> listH = u96.h(n32Var);
        cb1 cb1Var2 = this.b;
        if (cb1Var2 != null && !defpackage.aa4.e(cb1Var, cb1Var2)) {
            this.b = null;
            this.c = true;
            this.d.clear();
        }
        this.b = cb1Var;
        this.c = this.c && z;
        defpackage.nn1.s(listH, this.d);
        vq0 vq0Var = this.e;
        for (n32 n32Var2 : listH) {
            l32 l32Var = (l32) vq0Var.n.z.getValue();
            String str = vq0Var.O.a;
            l32Var.getClass();
            String strB = n32Var2.b();
            String str2 = n32Var2.b.isEmpty() ? null : (String) ((defpackage.b36) defpackage.qn1.b0(n32Var2.b)).c;
            if (strB != null && str2 != null) {
                synchronized (l32Var.c) {
                    try {
                        l32Var.b.a(str, strB, str2);
                        if (!z) {
                            l32Var.a.a.put(new defpackage.b36(str, strB), str2);
                        }
                        j59 j59Var = j59.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        if (this.a == 0) {
            a();
        }
    }
}
