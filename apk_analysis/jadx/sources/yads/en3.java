package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class en3 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ in3 c;
    public final /* synthetic */ gh0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public en3(in3 in3Var, gh0 gh0Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = in3Var;
        this.d = gh0Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new en3(this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new en3(this.c, this.d, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            defpackage.x81 x81Var = this.c.o;
            gh0 gh0Var = this.d;
            this.b = 1;
            if (x81Var.send(gh0Var, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
