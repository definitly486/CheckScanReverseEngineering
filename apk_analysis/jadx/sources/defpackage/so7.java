package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.device.domain.useCases.SendInstalledAppsSchemesUseCase", f = "SendInstalledAppsSchemesUseCase.kt", l = {9, 15}, m = "invoke")
public final class so7 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ to7 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public so7(to7 to7Var, f02 f02Var) {
        super(f02Var);
        this.m = to7Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.a(this);
    }
}
