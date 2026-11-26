package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.serialization.json.internal.JsonTreeReader$readDeepRecursive$1", f = "JsonTreeReader.kt", l = {113}, m = "invokeSuspend", v = 2)
public final class de4 extends f57 implements dm3<ae2<j59, oc4>, j59, e02<? super oc4>, Object> {
    public int l;
    public /* synthetic */ ae2 m;
    public final /* synthetic */ fe4 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public de4(fe4 fe4Var, e02<? super de4> e02Var) {
        super(3, e02Var);
        this.n = fe4Var;
    }

    @Override // defpackage.dm3
    public final Object invoke(ae2<j59, oc4> ae2Var, j59 j59Var, e02<? super oc4> e02Var) {
        de4 de4Var = new de4(this.n, e02Var);
        de4Var.m = ae2Var;
        return de4Var.invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        fe4 fe4Var = this.n;
        w98 w98Var = fe4Var.a;
        ae2 ae2Var = this.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            byte bP = w98Var.p();
            if (bP == 1) {
                return fe4Var.d(true);
            }
            if (bP == 0) {
                return fe4Var.d(false);
            }
            if (bP != 6) {
                if (bP == 8) {
                    return fe4Var.b();
                }
                w98.l(w98Var, "Can't begin reading element, unexpected token", 0, null, 6);
                throw null;
            }
            this.m = null;
            this.l = 1;
            obj = fe4Var.c(ae2Var, this);
            if (obj == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return (oc4) obj;
    }
}
