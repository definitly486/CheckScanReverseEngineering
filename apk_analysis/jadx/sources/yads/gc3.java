package yads;

import android.graphics.drawable.Drawable;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class gc3 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ hc3 c;
    public final /* synthetic */ rd3 d;
    public final /* synthetic */ dc3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gc3(hc3 hc3Var, rd3 rd3Var, dc3 dc3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = hc3Var;
        this.d = rd3Var;
        this.e = dc3Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new gc3(this.c, this.d, this.e, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((gc3) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            hl2 hl2Var = this.c.d;
            String str = this.d.c;
            this.b = 1;
            hl2Var.getClass();
            defpackage.oi2 oi2Var = defpackage.qo2.a;
            obj = defpackage.av0.d(defpackage.uy4.a.k0(), new dl2(hl2Var, str, null), this);
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
        Drawable drawable = (Drawable) obj;
        if (drawable != null) {
            ((defpackage.z3) this.e).a(drawable);
        }
        return j59.a;
    }
}
