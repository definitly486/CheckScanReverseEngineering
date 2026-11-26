package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.features.games.presentation.GamesViewModel$refreshLinkAndPlay$3", f = "GamesViewModel.kt", l = {}, m = "invokeSuspend")
public final class qo3 extends pg8 implements bm3<id3<? super Boolean>, e02<? super j59>, Object> {
    public final /* synthetic */ no3 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qo3(no3 no3Var, e02<? super qo3> e02Var) {
        super(2, e02Var);
        this.l = no3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new qo3(this.l, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super Boolean> id3Var, e02<? super j59> e02Var) {
        return ((qo3) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        Object value;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        z68 z68Var = this.l.f;
        do {
            value = z68Var.getValue();
        } while (!z68Var.a(value, lo3.a((lo3) value, jo3.c.a, null, 2)));
        return j59.a;
    }
}
