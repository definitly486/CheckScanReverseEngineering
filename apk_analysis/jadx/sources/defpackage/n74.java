package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class n74 implements l74 {
    public final v64 a;
    public final jf6 b;

    public n74(v64 v64Var, jf6 jf6Var) {
        this.a = v64Var;
        this.b = jf6Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.l74
    public final Object a(f02 f02Var) {
        m74 m74Var;
        if (f02Var instanceof m74) {
            m74Var = (m74) f02Var;
            int i = m74Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                m74Var.n = i - Integer.MIN_VALUE;
            } else {
                m74Var = new m74(this, f02Var);
            }
        } else {
            m74Var = new m74(this, f02Var);
        }
        Object objA = m74Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = m74Var.n;
        if (i2 == 0) {
            r57.b(objA);
            m74Var.n = 1;
            objA = this.a.a(m74Var);
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objA);
        }
        return ((o74) objA).a(this.b.r0());
    }
}
