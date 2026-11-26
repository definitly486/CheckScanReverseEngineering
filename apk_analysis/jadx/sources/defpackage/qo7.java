package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.device.domain.useCases.SendDeviceInfoUseCase", f = "SendDeviceInfoUseCase.kt", l = {19, 27, 29}, m = "invoke")
public final class qo7 extends f02 {
    public boolean l;
    public String m;
    public String n;
    public String o;
    public String p;
    public String q;
    public String r;
    public /* synthetic */ Object s;
    public final /* synthetic */ ro7 t;
    public int u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qo7(ro7 ro7Var, f02 f02Var) {
        super(f02Var);
        this.t = ro7Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.s = obj;
        this.u |= Integer.MIN_VALUE;
        return this.t.a(this);
    }
}
