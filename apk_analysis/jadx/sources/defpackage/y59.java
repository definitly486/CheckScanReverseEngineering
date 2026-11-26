package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.component.unityofferwall.UnityOfferwallController", f = "UnityOfferwallController.kt", l = {81, 83, 86}, m = "load")
public final class y59 extends f02 {
    public String l;
    public String m;
    public /* synthetic */ Object n;
    public final /* synthetic */ s59 o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y59(s59 s59Var, f02 f02Var) {
        super(f02Var);
        this.o = s59Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        return this.o.e(null, null, this);
    }
}
