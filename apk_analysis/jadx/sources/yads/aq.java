package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class aq extends defpackage.f02 {
    public Object b;
    public /* synthetic */ Object c;
    public final /* synthetic */ bq d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aq(bq bqVar, defpackage.f02 f02Var) {
        super(f02Var);
        this.d = bqVar;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return bq.a(this.d, null, null, this);
    }
}
