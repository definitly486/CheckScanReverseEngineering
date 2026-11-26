package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class zq extends pg8 implements defpackage.dm3 {
    public int b;
    public /* synthetic */ n8 c;
    public /* synthetic */ Object d;
    public final /* synthetic */ ar e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zq(ar arVar, defpackage.e02 e02Var) {
        super(3, e02Var);
        this.e = arVar;
    }

    @Override // defpackage.dm3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        zq zqVar = new zq(this.e, (defpackage.e02) obj3);
        zqVar.c = (n8) obj;
        zqVar.d = obj2;
        return zqVar.invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            n8 n8Var = this.c;
            Object obj2 = this.d;
            ar arVar = this.e;
            this.c = null;
            this.b = 1;
            if (arVar.a(n8Var, obj2, this) == a32Var) {
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
