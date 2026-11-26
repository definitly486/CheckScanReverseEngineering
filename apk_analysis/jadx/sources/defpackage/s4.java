package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class s4 extends gh4 implements nl3<z79, z79.a> {
    public final /* synthetic */ c4 f;
    public final /* synthetic */ String g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s4(c4 c4Var, String str) {
        super(1);
        this.f = c4Var;
        this.g = str;
    }

    @Override // defpackage.nl3
    public final z79.a invoke(z79 z79Var) {
        z79 z79Var2 = z79Var;
        z79Var2.getClass();
        jf6 jf6Var = this.f.a;
        z79.a aVar = z79Var2.a;
        if (aVar == z79.a.Success) {
            jf6Var.l0(Integer.parseInt(this.g));
        }
        jf6Var.a0();
        return aVar;
    }
}
