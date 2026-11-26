package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "coil3.RealImageLoader$execute$result$1", f = "RealImageLoader.kt", l = {143}, m = "invokeSuspend", v = 1)
public final class wy6 extends pg8 implements bm3<y22, e02<? super g24>, Object> {
    public int l;
    public final /* synthetic */ b24 m;
    public final /* synthetic */ sy6 n;
    public final /* synthetic */ t18 o;
    public final /* synthetic */ a13 p;
    public final /* synthetic */ x04 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wy6(b24 b24Var, sy6 sy6Var, t18 t18Var, a13 a13Var, x04 x04Var, e02<? super wy6> e02Var) {
        super(2, e02Var);
        this.m = b24Var;
        this.n = sy6Var;
        this.o = t18Var;
        this.p = a13Var;
        this.q = x04Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new wy6(this.m, this.n, this.o, this.p, this.q, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super g24> e02Var) {
        return ((wy6) create(y22Var, e02Var)).invokeSuspend(j59.a);
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
        List<e94> list = this.n.d.a;
        boolean z = this.q != null;
        b24 b24Var = this.m;
        fz6 fz6Var = new fz6(b24Var, list, 0, b24Var, this.o, this.p, z);
        this.l = 1;
        Object objA = fz6Var.a(this);
        return objA == a32Var ? a32Var : objA;
    }
}
