package defpackage;

import androidx.media3.muxer.WebmConstants;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "coil3.intercept.EngineInterceptor$execute$executeResult$1", f = "EngineInterceptor.kt", l = {WebmConstants.MkvEbmlElement.TRACK_TYPE}, m = "invokeSuspend", v = 1)
public final class oz2 extends pg8 implements bm3<y22, e02<? super lz2.a>, Object> {
    public int l;
    public final /* synthetic */ lz2 m;
    public final /* synthetic */ r07<b83> n;
    public final /* synthetic */ r07<fs1> o;
    public final /* synthetic */ b24 p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ r07<zz5> r;
    public final /* synthetic */ a13 s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oz2(lz2 lz2Var, r07<b83> r07Var, r07<fs1> r07Var2, b24 b24Var, Object obj, r07<zz5> r07Var3, a13 a13Var, e02<? super oz2> e02Var) {
        super(2, e02Var);
        this.m = lz2Var;
        this.n = r07Var;
        this.o = r07Var2;
        this.p = b24Var;
        this.q = obj;
        this.r = r07Var3;
        this.s = a13Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new oz2(this.m, this.n, this.o, this.p, this.q, this.r, this.s, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super lz2.a> e02Var) {
        return ((oz2) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        x48 x48Var = (x48) this.n.b;
        fs1 fs1Var = this.o.b;
        zz5 zz5Var = this.r.b;
        this.l = 1;
        Object objB = this.m.b(x48Var, fs1Var, this.p, this.q, zz5Var, this.s, this);
        return objB == a32Var ? a32Var : objB;
    }
}
