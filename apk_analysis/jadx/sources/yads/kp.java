package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class kp extends defpackage.f02 {
    public t5 b;
    public s5 c;
    public /* synthetic */ Object d;
    public final /* synthetic */ pp e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kp(pp ppVar, defpackage.f02 f02Var) {
        super(f02Var);
        this.e = ppVar;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a((dt) null, this);
    }
}
