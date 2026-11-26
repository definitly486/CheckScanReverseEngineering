package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class gl8 extends gh4 implements nl3<tr4<Object>, j59> {
    public final /* synthetic */ Object f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gl8(kl8 kl8Var, a64 a64Var) {
        super(1);
        this.f = a64Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(tr4<Object> tr4Var) {
        tr4<Object> tr4Var2 = tr4Var;
        tr4Var2.getClass();
        kk2 kk2Var = tr4Var2.a;
        if (kk2Var != null) {
            kl8.b(new fl8(kk2Var, this.f));
        }
        return j59.a;
    }
}
