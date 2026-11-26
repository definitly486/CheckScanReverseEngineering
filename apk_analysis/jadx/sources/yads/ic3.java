package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class ic3 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ sc3 c;
    public final /* synthetic */ zc3 d;
    public final /* synthetic */ rd3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ic3(sc3 sc3Var, zc3 zc3Var, rd3 rd3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = sc3Var;
        this.d = zc3Var;
        this.e = rd3Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new ic3(this.c, this.d, this.e, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((ic3) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
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
        sc3 sc3Var = this.c;
        zc3 zc3Var = this.d;
        rd3 rd3Var = this.e;
        this.b = 1;
        Object objA = sc3.a(sc3Var, zc3Var, rd3Var, this);
        return objA == a32Var ? a32Var : objA;
    }
}
