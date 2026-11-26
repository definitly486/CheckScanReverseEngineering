package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class oc3 extends defpackage.f02 {
    public /* synthetic */ Object b;
    public final /* synthetic */ sc3 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oc3(sc3 sc3Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.c = sc3Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return sc3.a(this.c, null, null, this);
    }
}
