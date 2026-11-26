package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class q79 {
    public final k5 a;
    public final jf6 b;
    public final qe c;

    public q79(k5 k5Var, jf6 jf6Var, qe qeVar) {
        this.a = k5Var;
        this.b = jf6Var;
        this.c = qeVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(f02 f02Var) {
        p79 p79Var;
        if (f02Var instanceof p79) {
            p79Var = (p79) f02Var;
            int i = p79Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                p79Var.n = i - Integer.MIN_VALUE;
            } else {
                p79Var = new p79(this, f02Var);
            }
        } else {
            p79Var = new p79(this, f02Var);
        }
        Object objD = p79Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = p79Var.n;
        k5 k5Var = this.a;
        if (i2 == 0) {
            r57.b(objD);
            p79Var.n = 1;
            objD = k5Var.d(p79Var);
            if (objD == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objD);
        }
        ba9 ba9Var = (ba9) objD;
        String strA = ba9Var.a();
        if (strA == null) {
            strA = "";
        }
        k5Var.setAvatar(strA);
        long jO = ba9Var.o();
        jf6 jf6Var = this.b;
        jf6Var.N0(jO);
        jf6Var.w(ba9Var.c());
        jf6Var.D0(ba9Var.i());
        String strM = ba9Var.m();
        if (strM == null) {
            strM = "";
        }
        jf6Var.E0(strM);
        String strA2 = ba9Var.a();
        if (strA2 == null) {
            strA2 = "";
        }
        jf6Var.w0(strA2);
        String strB = ba9Var.b();
        if (strB == null) {
            strB = "";
        }
        jf6Var.H(strB);
        String strH = ba9Var.h();
        if (strH == null) {
            strH = "";
        }
        jf6Var.a1(strH);
        Boolean boolN = ba9Var.n();
        jf6Var.C(boolN != null ? boolN.booleanValue() : false);
        String strF = ba9Var.f();
        if (strF == null) {
            strF = "";
        }
        jf6Var.y(strF);
        jf6Var.a(ba9Var.d().a());
        jf6Var.j0(ba9Var.p());
        String strJ = ba9Var.j();
        jf6Var.n(strJ != null ? strJ : "");
        this.c.g(ba9Var.o());
        String strE = ba9Var.e();
        if (strE != null) {
            jf6Var.I(strE);
        }
        String strG = ba9Var.g();
        if (strG != null) {
            jf6Var.z0(strG);
        }
        ba9.c cVarK = ba9Var.k();
        jf6Var.e(cVarK != null ? ht3.c().j(cVarK) : new String());
        return j59.a;
    }
}
