package defpackage;

import android.app.Activity;
import com.my.target.b3;

/* JADX INFO: loaded from: classes5.dex */
public final class df9 extends d8 {
    public z94 a;
    public boolean b;

    public static final class a extends cf9 {
        public final /* synthetic */ ll3<j59> b;
        public final /* synthetic */ nl3<String, j59> c;
        public final /* synthetic */ c31 d;

        public a(ll3 ll3Var, nl3 nl3Var, c31 c31Var) {
            this.b = ll3Var;
            this.c = nl3Var;
            this.d = c31Var;
        }

        @Override // z94.a
        public final void a(z94 z94Var) {
            this.b.invoke();
        }

        @Override // z94.a
        public final void b(z94 z94Var) {
            df9 df9Var = df9.this;
            if (!df9Var.b) {
                df9Var.b = true;
                this.c.invoke("VK");
            }
            c31 c31Var = this.d;
            if (c31Var.t() instanceof no5) {
                c31Var.resumeWith(Boolean.TRUE);
            }
        }

        @Override // z94.a
        public final void c(z94 z94Var) {
            c31 c31Var = this.d;
            if (c31Var.t() instanceof no5) {
                c31Var.resumeWith(Boolean.FALSE);
            }
        }

        @Override // z94.a
        public final void d(z94 z94Var) {
            z94 z94Var2 = df9.this.a;
            if (z94Var2 != null) {
                z94Var2.c();
            }
        }

        @Override // z94.a
        public final void e(z94 z94Var) {
            df9 df9Var = df9.this;
            if (!df9Var.b) {
                df9Var.b = true;
                this.c.invoke("VK");
            }
            c31 c31Var = this.d;
            if (c31Var.t() instanceof no5) {
                c31Var.resumeWith(Boolean.TRUE);
            }
        }

        @Override // z94.a
        public final void g(l6a l6aVar, z94 z94Var) {
            c31 c31Var = this.d;
            if (c31Var.t() instanceof no5) {
                c31Var.resumeWith(Boolean.FALSE);
            }
        }
    }

    @Override // defpackage.d8
    public final void a() {
        z94 z94Var = this.a;
        if (z94Var != null) {
            b3 b3Var = z94Var.f;
            if (b3Var != null) {
                b3Var.destroy();
                z94Var.f = null;
            }
            z94Var.h = null;
        }
        this.a = null;
    }

    @Override // defpackage.d8
    public final Object b(Activity activity, nl3<? super String, j59> nl3Var, ll3<j59> ll3Var, ll3<j59> ll3Var2, e02<? super Boolean> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        z94 z94Var = new z94(1883335, activity);
        this.a = z94Var;
        z94Var.h = new a(ll3Var, nl3Var, c31Var);
        z94Var.b();
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }
}
