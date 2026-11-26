package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.k57;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class gg extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ ig c;
    public final /* synthetic */ Context d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gg(ig igVar, Context context, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = igVar;
        this.d = context;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new gg(this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new gg(this.c, this.d, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        Object objB;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            vg vgVar = this.c.b;
            this.b = 1;
            objB = vgVar.b(this);
            if (objB == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            objB = ((k57) obj).b;
        }
        if (objB instanceof k57.a) {
            return null;
        }
        return objB;
    }
}
