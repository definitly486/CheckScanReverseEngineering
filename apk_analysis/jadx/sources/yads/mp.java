package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class mp extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ pp c;
    public final /* synthetic */ dt d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mp(pp ppVar, dt dtVar, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = ppVar;
        this.d = dtVar;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new mp(this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new mp(this.c, this.d, (defpackage.e02) obj2).invokeSuspend(j59.a);
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
        pp ppVar = this.c;
        ny4 ny4Var = ppVar.l;
        Context context = ppVar.a;
        dt dtVar = this.d;
        this.b = 1;
        Object objA = ny4Var.a(context, dtVar, this);
        return objA == a32Var ? a32Var : objA;
    }
}
