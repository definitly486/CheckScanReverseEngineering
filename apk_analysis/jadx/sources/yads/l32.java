package yads;

import androidx.collection.ArrayMap;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class l32 {
    public final ff3 a;
    public final sv5 b;
    public final ArrayMap c = new ArrayMap();

    public l32(ff3 ff3Var, sv5 sv5Var) {
        this.a = ff3Var;
        this.b = sv5Var;
    }

    public final void a(qb1 qb1Var, long j, boolean z) {
        if (defpackage.aa4.e(qb1.b, qb1Var)) {
            return;
        }
        synchronized (this.c) {
            try {
                bi2 bi2VarA = a(qb1Var);
                this.c.put(qb1Var, bi2VarA == null ? new bi2(j) : new bi2(j, bi2VarA.b));
                this.b.a(qb1Var.a, "/", String.valueOf(j));
                if (!z) {
                    this.a.b.put(qb1Var.a, String.valueOf(j));
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final bi2 a(qb1 qb1Var) {
        bi2 bi2Var;
        synchronized (this.c) {
            try {
                bi2Var = (bi2) this.c.get(qb1Var);
                if (bi2Var == null) {
                    String str = (String) this.a.b.get(qb1Var.a);
                    bi2Var = str != null ? new bi2(Long.parseLong(str)) : null;
                    this.c.put(qb1Var, bi2Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bi2Var;
    }
}
