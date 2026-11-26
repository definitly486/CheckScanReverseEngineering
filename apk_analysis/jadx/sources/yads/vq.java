package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class vq extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ wq c;
    public final /* synthetic */ Object d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vq(wq wqVar, Object obj, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = wqVar;
        this.d = obj;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new vq(this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new vq(this.c, this.d, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            wq wqVar = this.c;
            zq zqVar = wqVar.e;
            n8 n8Var = wqVar.b;
            Object obj2 = this.d;
            this.b = 1;
            if (zqVar.invoke(n8Var, obj2, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        wq wqVar2 = this.c;
        wqVar2.d.a(wqVar2.b, this.d);
        defpackage.c31 c31Var = this.c.a;
        j59 j59Var = j59.a;
        c31Var.resumeWith(j59Var);
        return j59Var;
    }
}
