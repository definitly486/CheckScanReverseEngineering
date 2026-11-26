package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class nq3 implements lq3 {
    public final eq3 a;

    public nq3(eq3 eq3Var) {
        this.a = eq3Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.lq3
    public final Object a(int i, f02 f02Var) {
        mq3 mq3Var;
        if (f02Var instanceof mq3) {
            mq3Var = (mq3) f02Var;
            int i2 = mq3Var.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                mq3Var.n = i2 - Integer.MIN_VALUE;
            } else {
                mq3Var = new mq3(this, f02Var);
            }
        } else {
            mq3Var = new mq3(this, f02Var);
        }
        Object objA = mq3Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = mq3Var.n;
        if (i3 == 0) {
            r57.b(objA);
            mq3Var.n = 1;
            objA = this.a.a(i, mq3Var);
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objA);
        }
        oq3 oq3Var = (oq3) objA;
        oq3Var.getClass();
        String strD = oq3Var.d();
        String strE = oq3Var.e();
        String strA = oq3Var.a();
        oq3.a aVarB = oq3Var.b();
        hq3.a aVar = aVarB != null ? new hq3.a(aVarB.a(), aVarB.b()) : null;
        oq3.a aVarC = oq3Var.c();
        return new hq3(strE, strD, strA, aVar, aVarC != null ? new hq3.a(aVarC.a(), aVarC.b()) : null);
    }
}
