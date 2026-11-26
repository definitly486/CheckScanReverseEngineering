package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class aj0 implements td2 {
    public final h24 a;
    public final zz5 b;
    public final io7 c;
    public final k23 d;

    public static final class a extends qj3 {
        public Exception c;

        @Override // defpackage.qj3, defpackage.v48
        public final long t0(bu0 bu0Var, long j) throws Exception {
            try {
                return super.t0(bu0Var, j);
            } catch (Exception e) {
                this.c = e;
                throw e;
            }
        }
    }

    public static final class b implements td2.a {
        public final io7 a;
        public final k23 b;

        public b(io7 io7Var, k23 k23Var) {
            this.a = io7Var;
            this.b = k23Var;
        }

        @Override // td2.a
        public final td2 a(x48 x48Var, zz5 zz5Var) {
            return new aj0(x48Var.a, zz5Var, this.a, this.b);
        }
    }

    public aj0(h24 h24Var, zz5 zz5Var, io7 io7Var, k23 k23Var) {
        this.a = h24Var;
        this.b = zz5Var;
        this.c = io7Var;
        this.d = k23Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.td2
    public final Object a(f02 f02Var) throws Throwable {
        bj0 bj0Var;
        io7 io7Var;
        eo7 eo7Var;
        Throwable th;
        eo7 eo7Var2;
        if (f02Var instanceof bj0) {
            bj0Var = (bj0) f02Var;
            int i = bj0Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                bj0Var.o = i - Integer.MIN_VALUE;
            } else {
                bj0Var = new bj0(this, f02Var);
            }
        } else {
            bj0Var = new bj0(this, f02Var);
        }
        Object obj = bj0Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = bj0Var.o;
        try {
            if (i2 == 0) {
                r57.b(obj);
                io7Var = this.c;
                bj0Var.l = io7Var;
                bj0Var.o = 1;
                if (io7Var.a(bj0Var) != a32Var) {
                }
                eo7Var = io7Var;
                return a32Var;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                eo7Var2 = bj0Var.l;
                try {
                    r57.b(obj);
                    eo7Var2 = eo7Var2;
                    qd2 qd2Var = (qd2) obj;
                    eo7Var2.release();
                    return qd2Var;
                } catch (Throwable th2) {
                    th = th2;
                    eo7Var2.release();
                    throw th;
                }
            }
            eo7 eo7Var3 = bj0Var.l;
            r57.b(obj);
            eo7Var = eo7Var3;
            eo7Var = io7Var;
            zi0 zi0Var = new zi0(this, 0);
            bj0Var.l = eo7Var;
            bj0Var.o = 2;
            Object objD = av0.d(gx2.b, new x94(zi0Var, null), bj0Var);
            if (objD != a32Var) {
                eo7 eo7Var4 = eo7Var;
                obj = objD;
                eo7Var2 = eo7Var4;
                qd2 qd2Var2 = (qd2) obj;
                eo7Var2.release();
                return qd2Var2;
            }
            eo7Var = io7Var;
            return a32Var;
        } catch (Throwable th3) {
            eo7 eo7Var5 = eo7Var;
            th = th3;
            eo7Var2 = eo7Var5;
            eo7Var2.release();
            throw th;
        }
    }
}
