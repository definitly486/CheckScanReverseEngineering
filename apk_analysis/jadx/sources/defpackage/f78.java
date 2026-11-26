package defpackage;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "coil3.decode.StaticImageDecoder", f = "StaticImageDecoder.kt", l = {169}, m = "decode", v = 1)
public final class f78 extends f02 {
    public io7 l;
    public /* synthetic */ Object m;
    public final /* synthetic */ e78 n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f78(e78 e78Var, f02 f02Var) {
        super(f02Var);
        this.n = e78Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.a(this);
    }
}
