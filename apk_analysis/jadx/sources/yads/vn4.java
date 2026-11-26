package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class vn4 extends defpackage.f02 {
    public /* synthetic */ Object b;
    public final /* synthetic */ ao4 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vn4(ao4 ao4Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.c = ao4Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return ao4.a(this.c, null, null, null, this);
    }
}
