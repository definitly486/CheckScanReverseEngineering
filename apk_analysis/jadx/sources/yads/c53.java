package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class c53 extends defpackage.f02 {
    public String b;
    public /* synthetic */ Object c;
    public final /* synthetic */ d53 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c53(d53 d53Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.d = d53Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a(null, this);
    }
}
