package yads;

import defpackage.vna;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes6.dex */
public final class zr3 {
    public final long a;
    public final TreeSet b = new TreeSet(new vna());
    public long c;

    public zr3(long j) {
        this.a = j;
    }

    public static int a(jw jwVar, jw jwVar2) {
        long j = jwVar.g;
        long j2 = jwVar2.g;
        if (j - j2 != 0) {
            return j < j2 ? -1 : 1;
        }
        if (!jwVar.b.equals(jwVar2.b)) {
            return jwVar.b.compareTo(jwVar2.b);
        }
        long j3 = jwVar.c - jwVar2.c;
        if (j3 == 0) {
            return 0;
        }
        return j3 < 0 ? -1 : 1;
    }

    public final void a(yv yvVar, long j) {
        while (this.c + j > this.a && !this.b.isEmpty()) {
            jw jwVar = (jw) this.b.first();
            ok5 ok5Var = (ok5) yvVar;
            synchronized (ok5Var) {
                ok5Var.a(jwVar);
            }
        }
    }
}
