package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.zya;

/* JADX INFO: loaded from: classes6.dex */
public final class qc3 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ zc3 c;
    public final /* synthetic */ String d;
    public final /* synthetic */ int e;
    public final /* synthetic */ int f;
    public final /* synthetic */ sc3 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qc3(zc3 zc3Var, String str, int i, int i2, sc3 sc3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = zc3Var;
        this.d = str;
        this.e = i;
        this.f = i2;
        this.g = sc3Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new qc3(this.c, this.d, this.e, this.f, this.g, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((qc3) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        zc3 zc3Var = this.c;
        String str = this.d;
        int i2 = this.e;
        int i3 = this.f;
        sc3 sc3Var = this.g;
        this.b = 1;
        defpackage.c31 c31Var = new defpackage.c31(1, zya.b(this));
        c31Var.u();
        zc3Var.a(str, new pc3(sc3Var, c31Var, str), i2, i3);
        Object objS = c31Var.s();
        return objS == a32Var ? a32Var : objS;
    }
}
