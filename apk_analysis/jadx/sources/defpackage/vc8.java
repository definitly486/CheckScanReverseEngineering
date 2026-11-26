package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class vc8 implements tc8 {
    public final cc8 a;
    public final jf6 b;

    public vc8(cc8 cc8Var, jf6 jf6Var) {
        this.a = cc8Var;
        this.b = jf6Var;
    }

    @Override // defpackage.tc8
    public final Object a(jc8 jc8Var) {
        return this.a.a(jc8Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.tc8
    public final Object b(f02 f02Var) {
        uc8 uc8Var;
        if (f02Var instanceof uc8) {
            uc8Var = (uc8) f02Var;
            int i = uc8Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                uc8Var.n = i - Integer.MIN_VALUE;
            } else {
                uc8Var = new uc8(this, f02Var);
            }
        } else {
            uc8Var = new uc8(this, f02Var);
        }
        Object objC = uc8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = uc8Var.n;
        if (i2 == 0) {
            r57.b(objC);
            uc8Var.n = 1;
            objC = this.a.c(uc8Var);
            if (objC == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objC);
        }
        return ((sc8) objC).a(this.b.L());
    }
}
