package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.selects.SelectImplementation", f = "Select.kt", l = {450, 453}, m = "doSelectSuspend", v = 1)
public final class am7 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ zl7<Object> m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public am7(zl7 zl7Var, f02 f02Var) {
        super(f02Var);
        this.m = zl7Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        int i = zl7.h;
        return this.m.h(this);
    }
}
