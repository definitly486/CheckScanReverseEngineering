package defpackage;

import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.features.games.presentation.GamesViewModel$refreshLinkAndPlay$4", f = "GamesViewModel.kt", l = {}, m = "invokeSuspend")
public final class ro3 extends pg8 implements bm3<Boolean, e02<? super j59>, Object> {
    public /* synthetic */ boolean l;
    public final /* synthetic */ no3 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ro3(no3 no3Var, e02<? super ro3> e02Var) {
        super(2, e02Var);
        this.m = no3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        ro3 ro3Var = new ro3(this.m, e02Var);
        ro3Var.l = ((Boolean) obj).booleanValue();
        return ro3Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Boolean bool, e02<? super j59> e02Var) {
        Boolean bool2 = bool;
        bool2.booleanValue();
        return ((ro3) create(bool2, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        Object value;
        boolean z = this.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        no3 no3Var = this.m;
        no3Var.d();
        if (z) {
            no3Var.e.b();
        } else {
            z68 z68Var = no3Var.f;
            do {
                value = z68Var.getValue();
            } while (!z68Var.a(value, lo3.a((lo3) value, null, new Integer(R.string.games_tab_offerwall_unavailable), 1)));
        }
        return j59.a;
    }
}
