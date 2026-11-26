package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class j23 extends defpackage.f02 {
    public String b;
    public /* synthetic */ Object c;
    public final /* synthetic */ k23 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j23(k23 k23Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.d = k23Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a(null, this);
    }
}
