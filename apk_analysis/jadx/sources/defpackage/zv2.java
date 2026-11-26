package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class zv2 extends gh4 implements nl3<hl3.a, hl3> {
    public final /* synthetic */ oz6 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zv2(oz6 oz6Var) {
        super(1);
        this.f = oz6Var;
    }

    @Override // defpackage.nl3
    public final hl3 invoke(hl3.a aVar) {
        hl3.a aVar2 = aVar;
        aVar2.getClass();
        return new hl3(this.f, aVar2);
    }
}
