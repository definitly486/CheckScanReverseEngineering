package yads;

import android.widget.ImageView;
import android.widget.ProgressBar;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class z05 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ a15 c;
    public final /* synthetic */ ImageView d;
    public final /* synthetic */ ProgressBar e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z05(a15 a15Var, ImageView imageView, ProgressBar progressBar, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = a15Var;
        this.d = imageView;
        this.e = progressBar;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new z05(this.c, this.d, this.e, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((z05) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            a15 a15Var = this.c;
            defpackage.wy0 wy0VarA = defpackage.s0.a(new fc3(a15Var.b, a15Var.a.c, null));
            y05 y05Var = new y05(this.d, this.e);
            this.b = 1;
            if (wy0VarA.collect(y05Var, this) == a32Var) {
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
