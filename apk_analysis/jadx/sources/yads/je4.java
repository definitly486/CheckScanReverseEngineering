package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class je4 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ le4 c;
    public final /* synthetic */ ak d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public je4(le4 le4Var, ak akVar, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = le4Var;
        this.d = akVar;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new je4(this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new je4(this.c, this.d, (defpackage.e02) obj2).invokeSuspend(j59.a);
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
        le4 le4Var = this.c;
        ak akVar = this.d;
        this.b = 1;
        Object objA = le4.a(le4Var, akVar, this);
        return objA == a32Var ? a32Var : objA;
    }
}
