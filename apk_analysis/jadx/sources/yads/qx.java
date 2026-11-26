package yads;

import android.widget.TextView;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class qx extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ rx c;
    public final /* synthetic */ TextView d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qx(rx rxVar, TextView textView, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = rxVar;
        this.d = textView;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new qx(this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new qx(this.c, this.d, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            this.b = 1;
            if (defpackage.yk2.b(2000L, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        this.c.b.a(this.d);
        return j59.a;
    }
}
