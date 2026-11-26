package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.presentation.games.PreferencesGamesUserSource", f = "PreferencesGamesUserSource.kt", l = {35, 36}, m = "refreshOfferwallLink")
public final class hf6 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ if6 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hf6(if6 if6Var, f02 f02Var) {
        super(f02Var);
        this.m = if6Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.c(this);
    }
}
