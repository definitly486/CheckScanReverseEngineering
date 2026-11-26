package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class fn3 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ in3 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fn3(in3 in3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = in3Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new fn3(this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new fn3(this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        gh0 dh0Var;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            n43 n43Var = this.c.b;
            this.b = 1;
            ig0 ig0Var = n43Var.a;
            obj = defpackage.av0.d(ig0Var.f, new hg0(ig0Var, null), this);
            if (obj == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        ah3 ah3Var = (ah3) obj;
        if (ah3Var instanceof zg3) {
            dh0Var = new eh0(((zg3) ah3Var).a);
        } else if (ah3Var instanceof xg3) {
            dh0Var = new dh0(((xg3) ah3Var).a);
        } else {
            if (!(ah3Var instanceof yg3)) {
                defpackage.me0.e();
                return null;
            }
            dh0Var = ch0.a;
        }
        in3 in3Var = this.c;
        defpackage.av0.c(in3Var.a, null, null, new en3(in3Var, dh0Var, null), 3);
        return j59.a;
    }
}
