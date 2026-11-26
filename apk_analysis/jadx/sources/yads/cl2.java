package yads;

import android.graphics.drawable.Drawable;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class cl2 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ hl2 c;
    public final /* synthetic */ String d;
    public final /* synthetic */ String e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cl2(hl2 hl2Var, String str, String str2, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = hl2Var;
        this.d = str;
        this.e = str2;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new cl2(this.c, this.d, this.e, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((cl2) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        try {
            if (i == 0) {
                r57.b(obj);
                hl2 hl2Var = this.c;
                String str = this.d;
                String str2 = this.e;
                this.b = 1;
                obj = hl2.a(hl2Var, str, str2, this);
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
            this.c.e.remove(this.d);
            return drawable;
        } catch (Throwable th) {
            this.c.e.remove(this.d);
            throw th;
        }
    }
}
