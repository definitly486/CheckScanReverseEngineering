package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class cw2 {
    public static final long[] e = new long[0];
    public final mp7 a;
    public final sc4.a b;
    public long c;
    public final long[] d;

    public cw2(mp7 mp7Var, sc4.a aVar) {
        mp7Var.getClass();
        this.a = mp7Var;
        this.b = aVar;
        int iE = mp7Var.e();
        if (iE <= 64) {
            this.c = iE != 64 ? (-1) << iE : 0L;
            this.d = e;
            return;
        }
        this.c = 0L;
        int i = (iE - 1) >>> 6;
        long[] jArr = new long[i];
        if ((iE & 63) != 0) {
            jArr[i - 1] = (-1) << iE;
        }
        this.d = jArr;
    }
}
