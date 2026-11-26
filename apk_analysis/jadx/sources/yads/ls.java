package yads;

import android.os.SystemClock;
import defpackage.p1a;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ls implements er2 {
    public final f06 a;
    public final int b;
    public final int[] c;
    public final vz2[] d;
    public final long[] e;
    public int f;

    public ls(f06 f06Var, int[] iArr) {
        vz2[] vz2VarArr;
        if (iArr.length <= 0) {
            defpackage.ud.g();
            throw null;
        }
        f06Var.getClass();
        this.a = f06Var;
        int length = iArr.length;
        this.b = length;
        this.d = new vz2[length];
        int i = 0;
        while (true) {
            int length2 = iArr.length;
            vz2VarArr = this.d;
            if (i >= length2) {
                break;
            }
            vz2VarArr[i] = f06Var.e[iArr[i]];
            i++;
        }
        Arrays.sort(vz2VarArr, new p1a());
        this.c = new int[this.b];
        int i2 = 0;
        while (true) {
            int i3 = this.b;
            if (i2 >= i3) {
                this.e = new long[i3];
                return;
            }
            int[] iArr2 = this.c;
            vz2 vz2Var = this.d[i2];
            int i4 = 0;
            while (true) {
                vz2[] vz2VarArr2 = f06Var.e;
                if (i4 >= vz2VarArr2.length) {
                    i4 = -1;
                    break;
                } else if (vz2Var == vz2VarArr2[i4]) {
                    break;
                } else {
                    i4++;
                }
            }
            iArr2[i2] = i4;
            i2++;
        }
    }

    @Override // yads.er2
    public final boolean a(int i, long j) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean zB = b(i, jElapsedRealtime);
        int i2 = 0;
        while (i2 < this.b && !zB) {
            zB = (i2 == i || b(i2, jElapsedRealtime)) ? false : true;
            i2++;
        }
        if (!zB) {
            return false;
        }
        long[] jArr = this.e;
        long j2 = jArr[i];
        int i3 = u56.a;
        long j3 = jElapsedRealtime + j;
        if (((j ^ j3) & (jElapsedRealtime ^ j3)) < 0) {
            j3 = Long.MAX_VALUE;
        }
        jArr[i] = Math.max(j2, j3);
        return true;
    }

    @Override // yads.er2
    public final boolean b(int i, long j) {
        return this.e[i] > j;
    }

    @Override // yads.er2
    public final int c(int i) {
        for (int i2 = 0; i2 < this.b; i2++) {
            if (this.c[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // yads.er2
    public final vz2 d() {
        return this.d[f()];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ls lsVar = (ls) obj;
            if (this.a == lsVar.a && Arrays.equals(this.c, lsVar.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f;
        if (i != 0) {
            return i;
        }
        int iHashCode = Arrays.hashCode(this.c) + (System.identityHashCode(this.a) * 31);
        this.f = iHashCode;
        return iHashCode;
    }

    @Override // yads.er2
    public final int length() {
        return this.c.length;
    }

    @Override // yads.er2
    public final int b(int i) {
        return this.c[i];
    }

    @Override // yads.er2
    public void b() {
    }

    @Override // yads.er2
    public final f06 c() {
        return this.a;
    }

    @Override // yads.er2
    public void a(float f) {
    }

    public static /* synthetic */ int a(vz2 vz2Var, vz2 vz2Var2) {
        return vz2Var2.i - vz2Var.i;
    }

    @Override // yads.er2
    public final vz2 a(int i) {
        return this.d[i];
    }

    @Override // yads.er2
    public final int a(vz2 vz2Var) {
        for (int i = 0; i < this.b; i++) {
            if (this.d[i] == vz2Var) {
                return i;
            }
        }
        return -1;
    }

    @Override // yads.er2
    public int a(long j, List list) {
        return list.size();
    }

    @Override // yads.er2
    public void a() {
    }
}
