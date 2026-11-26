package defpackage;

import defpackage.pz3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class r26<T extends pz3> {
    public final bm3<Integer, e02<? super Boolean>, Object> a;
    public final y22 b;
    public final a<T> c;
    public final z68 d;
    public boolean e;
    public boolean f;

    public interface a<T> {
        void a(Throwable th);

        void showData(List<? extends T> list);
    }

    @bd2(c = "com.warefly.checkscan.core.ui.paginator.Paginator$loadNewPage$1", f = "Paginator.kt", l = {29}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ r26<T> m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(r26<T> r26Var, e02<? super b> e02Var) {
            super(2, e02Var);
            this.m = r26Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new b(this.m, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((b) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            r26<T> r26Var = this.m;
            if (i == 0) {
                r57.b(obj);
                r26Var.e = false;
                z68 z68Var = r26Var.d;
                z68Var.k(null, new Integer(((Number) z68Var.getValue()).intValue() + 1));
                this.l = 1;
                if (yk2.b(200L, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            r26Var.e = true;
            return j59.a;
        }
    }

    public r26(bm3 bm3Var, y22 y22Var, a aVar, ff3 ff3Var) {
        y22Var.getClass();
        this.a = bm3Var;
        this.b = y22Var;
        this.c = aVar;
        z68 z68VarA = px.a(-1);
        this.d = z68VarA;
        this.e = true;
        px.h(new de3(new df3(ff3Var, new n26(this, null)), new o26(this, null)), y22Var);
        px.h(new de3(new df3(new t26(z68VarA), new p26(this, null)), new q26(this, null)), y22Var);
    }

    public final void a() {
        if (!this.e || this.f) {
            return;
        }
        av0.c(this.b, null, null, new b(this, null), 3);
    }
}
