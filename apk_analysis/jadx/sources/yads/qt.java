package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class qt {
    public final kt a;
    public final pt b;
    public mt c;
    public final int d;

    public qt(nt ntVar, pt ptVar, long j, long j2, long j3, long j4, long j5, int i) {
        this.b = ptVar;
        this.d = i;
        this.a = new kt(ntVar, j, j2, j3, j4, j5);
    }

    public final int a(wk0 wk0Var, qx4 qx4Var) {
        while (true) {
            mt mtVar = this.c;
            if (mtVar == null) {
                defpackage.ud.g();
                return 0;
            }
            long j = mtVar.f;
            long j2 = mtVar.g;
            long j3 = mtVar.h;
            if (j2 - j <= this.d) {
                this.c = null;
                this.b.a();
                if (j == wk0Var.d) {
                    return 0;
                }
                qx4Var.a = j;
                return 1;
            }
            long j4 = wk0Var.d;
            long j5 = j3 - j4;
            if (j5 < 0 || j5 > 262144) {
                if (j3 == j4) {
                    return 0;
                }
                qx4Var.a = j3;
                return 1;
            }
            wk0Var.a((int) j5);
            wk0Var.f = 0;
            ot otVarA = this.b.a(wk0Var, mtVar.b);
            int i = otVarA.a;
            if (i == -3) {
                this.c = null;
                this.b.a();
                if (j3 == wk0Var.d) {
                    return 0;
                }
                qx4Var.a = j3;
                return 1;
            }
            if (i == -2) {
                long j6 = otVarA.b;
                long j7 = otVarA.c;
                mtVar.d = j6;
                mtVar.f = j7;
                mtVar.h = mt.a(mtVar.b, j6, mtVar.e, j7, mtVar.g, mtVar.c);
            } else {
                if (i != -1) {
                    if (i != 0) {
                        defpackage.ah.f("Invalid case");
                        return 0;
                    }
                    long j8 = otVarA.c - wk0Var.d;
                    if (j8 >= 0 && j8 <= 262144) {
                        wk0Var.a((int) j8);
                    }
                    this.c = null;
                    this.b.a();
                    long j9 = otVarA.c;
                    if (j9 == wk0Var.d) {
                        return 0;
                    }
                    qx4Var.a = j9;
                    return 1;
                }
                long j10 = otVarA.b;
                long j11 = otVarA.c;
                mtVar.e = j10;
                mtVar.g = j11;
                mtVar.h = mt.a(mtVar.b, mtVar.d, j10, mtVar.f, j11, mtVar.c);
            }
        }
    }

    public final void a(long j) {
        mt mtVar = this.c;
        if (mtVar == null || mtVar.a != j) {
            long jA = this.a.a.a(j);
            kt ktVar = this.a;
            this.c = new mt(j, jA, ktVar.c, ktVar.d, ktVar.e, ktVar.f);
        }
    }
}
