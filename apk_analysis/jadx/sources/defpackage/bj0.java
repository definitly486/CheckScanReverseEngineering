package defpackage;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "coil3.decode.BitmapFactoryDecoder", f = "BitmapFactoryDecoder.kt", l = {213, 40}, m = "decode", v = 1)
public final class bj0 extends f02 {
    public eo7 l;
    public /* synthetic */ Object m;
    public final /* synthetic */ aj0 n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bj0(aj0 aj0Var, f02 f02Var) {
        super(f02Var);
        this.n = aj0Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.a(this);
    }
}
