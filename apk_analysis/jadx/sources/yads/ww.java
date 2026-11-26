package yads;

import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes6.dex */
public final class ww {
    public final int a;
    public final String b;
    public final TreeSet c = new TreeSet();
    public final ArrayList d = new ArrayList();
    public fk0 e;

    public ww(int i, String str, fk0 fk0Var) {
        this.a = i;
        this.b = str;
        this.e = fk0Var;
    }

    public final long a(long j, long j2) {
        if (j < 0) {
            defpackage.mi2.b();
            return 0L;
        }
        if (j2 < 0) {
            defpackage.mi2.b();
            return 0L;
        }
        qk5 qk5VarB = b(j, j2);
        if (!qk5VarB.e) {
            long j3 = qk5VarB.d;
            return -Math.min(j3 != -1 ? j3 : Long.MAX_VALUE, j2);
        }
        long j4 = j + j2;
        long j5 = j4 >= 0 ? j4 : Long.MAX_VALUE;
        long jMax = qk5VarB.c + qk5VarB.d;
        if (jMax < j5) {
            for (qk5 qk5Var : this.c.tailSet(qk5VarB, false)) {
                long j6 = qk5Var.c;
                if (j6 > jMax) {
                    break;
                }
                jMax = Math.max(jMax, j6 + qk5Var.d);
                if (jMax >= j5) {
                    break;
                }
            }
        }
        return Math.min(jMax - j, j2);
    }

    public final qk5 b(long j, long j2) {
        long j3;
        long jMin = j2;
        qk5 qk5Var = new qk5(this.b, j, -1L, C.TIME_UNSET, null);
        qk5 qk5Var2 = (qk5) this.c.floor(qk5Var);
        if (qk5Var2 != null && qk5Var2.c + qk5Var2.d > j) {
            return qk5Var2;
        }
        qk5 qk5Var3 = (qk5) this.c.ceiling(qk5Var);
        if (qk5Var3 != null) {
            long j4 = qk5Var3.c - j;
            if (jMin == -1) {
                j3 = j4;
            } else {
                jMin = Math.min(j4, jMin);
                j3 = jMin;
            }
        } else {
            j3 = jMin;
        }
        return new qk5(this.b, j, j3, C.TIME_UNSET, null);
    }

    public final boolean c(long j, long j2) {
        for (int i = 0; i < this.d.size(); i++) {
            vw vwVar = (vw) this.d.get(i);
            long j3 = vwVar.b;
            if (j3 == -1) {
                if (j >= vwVar.a) {
                    return true;
                }
            } else if (j2 == -1) {
                continue;
            } else {
                long j4 = vwVar.a;
                if (j4 <= j && j + j2 <= j4 + j3) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ww.class == obj.getClass()) {
            ww wwVar = (ww) obj;
            if (this.a == wwVar.a && this.b.equals(wwVar.b) && this.c.equals(wwVar.c) && this.e.equals(wwVar.e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.e.hashCode() + l4.a(this.a * 31, 31, this.b);
    }
}
