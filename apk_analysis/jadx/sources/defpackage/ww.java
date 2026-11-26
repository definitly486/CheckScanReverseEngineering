package defpackage;

import androidx.appcompat.app.AppCompatDelegate;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.auth.data.network.repositoryImpl.AuthRepositoryImpl", f = "AuthRepositoryImpl.kt", l = {AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY}, m = "addEmail")
public final class ww extends f02 {
    public String l;
    public /* synthetic */ Object m;
    public final /* synthetic */ dx n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ww(dx dxVar, f02 f02Var) {
        super(f02Var);
        this.n = dxVar;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.d(null, this);
    }
}
