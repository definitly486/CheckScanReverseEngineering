package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.features.games.presentation.GamesViewModel$refreshLinkAndPlay$2", f = "GamesViewModel.kt", l = {104}, m = "invokeSuspend")
public final class po3 extends pg8 implements dm3<id3<? super Boolean>, Throwable, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ id3 m;

    @Override // defpackage.dm3
    public final Object invoke(id3<? super Boolean> id3Var, Throwable th, e02<? super j59> e02Var) {
        po3 po3Var = new po3(3, e02Var);
        po3Var.m = id3Var;
        return po3Var.invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        id3 id3Var = this.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            Boolean bool = Boolean.FALSE;
            this.m = null;
            this.l = 1;
            if (id3Var.emit(bool, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
