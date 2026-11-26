package defpackage;

import androidx.compose.ui.spatial.RectListKt;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.core.ui.paginator.Paginator$4", f = "Paginator.kt", l = {RectListKt.BitOffsetForFocusable}, m = "invokeSuspend")
public final class p26 extends pg8 implements bm3<Integer, e02<? super j59>, Object> {
    public r26 l;
    public int m;
    public /* synthetic */ int n;
    public final /* synthetic */ r26<pz3> o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p26(r26<pz3> r26Var, e02<? super p26> e02Var) {
        super(2, e02Var);
        this.o = r26Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        p26 p26Var = new p26(this.o, e02Var);
        p26Var.n = ((Number) obj).intValue();
        return p26Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Integer num, e02<? super j59> e02Var) {
        return ((p26) create(Integer.valueOf(num.intValue()), e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        r26<pz3> r26Var;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.m;
        if (i == 0) {
            r57.b(obj);
            int i2 = this.n;
            r26<pz3> r26Var2 = this.o;
            bm3<Integer, e02<? super Boolean>, Object> bm3Var = r26Var2.a;
            Integer num = new Integer(i2);
            this.l = r26Var2;
            this.m = 1;
            obj = bm3Var.invoke(num, this);
            if (obj == a32Var) {
                return a32Var;
            }
            r26Var = r26Var2;
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r26Var = this.l;
            r57.b(obj);
        }
        r26Var.f = ((Boolean) obj).booleanValue();
        return j59.a;
    }
}
