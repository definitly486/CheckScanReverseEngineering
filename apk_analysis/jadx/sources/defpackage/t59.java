package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.component.unityofferwall.UnityOfferwallController", f = "UnityOfferwallController.kt", l = {97}, m = "awaitConnect")
public final class t59 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ s59 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t59(s59 s59Var, f02 f02Var) {
        super(f02Var);
        this.m = s59Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.b(null, this);
    }
}
