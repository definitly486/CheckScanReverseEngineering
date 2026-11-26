package yads;

import android.graphics.drawable.Drawable;
import defpackage.j59;
import defpackage.ll3;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class fc3 extends pg8 implements defpackage.bm3 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ hc3 d;
    public final /* synthetic */ rd3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fc3(hc3 hc3Var, rd3 rd3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.d = hc3Var;
        this.e = rd3Var;
    }

    public static final j59 a(ll3 ll3Var) {
        ll3Var.invoke();
        return j59.a;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        fc3 fc3Var = new fc3(this.d, this.e, e02Var);
        fc3Var.c = obj;
        return fc3Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((fc3) create((defpackage.ug6) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            defpackage.ug6 ug6Var = (defpackage.ug6) this.c;
            defpackage.eh0 eh0Var = new defpackage.eh0(this.d.a(this.e, new defpackage.z3(ug6Var, 3)), 6);
            this.b = 1;
            if (defpackage.sg6.a(ug6Var, eh0Var, this) == a32Var) {
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

    public static final void a(defpackage.ug6 ug6Var, Drawable drawable) {
        ug6Var.mo0trySendJP2dKIU(drawable);
    }
}
