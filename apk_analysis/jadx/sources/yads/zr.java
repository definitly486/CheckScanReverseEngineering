package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class zr extends cz {
    public final long j;
    public final long k;
    public final long l;
    public bs m;
    public int[] n;

    public zr(wc0 wc0Var, bd0 bd0Var, vz2 vz2Var, int i, Object obj, long j, long j2, long j3, long j4, long j5) {
        super(wc0Var, bd0Var, 1, vz2Var, i, obj, j, j2);
        vz2Var.getClass();
        this.j = j5;
        this.k = j3;
        this.l = j4;
    }

    public final int a(int i) {
        int[] iArr = this.n;
        if (iArr != null) {
            return iArr[i];
        }
        defpackage.ud.g();
        return 0;
    }

    public long c() {
        long j = this.j;
        if (j != -1) {
            return j + 1;
        }
        return -1L;
    }

    public abstract boolean d();
}
