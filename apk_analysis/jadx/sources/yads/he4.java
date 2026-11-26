package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class he4 extends defpackage.f02 {
    public ak b;
    public /* synthetic */ Object c;
    public final /* synthetic */ le4 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public he4(le4 le4Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.d = le4Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return le4.a(this.d, (ak) null, this);
    }
}
