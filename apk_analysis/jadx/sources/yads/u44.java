package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class u44 extends defpackage.f02 {
    public String b;
    public /* synthetic */ Object c;
    public final /* synthetic */ com.monetization.ads.mediation.base.initialize.a d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u44(com.monetization.ads.mediation.base.initialize.a aVar, defpackage.f02 f02Var) {
        super(f02Var);
        this.d = aVar;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a(null, null, this);
    }
}
