package defpackage;

import android.content.Context;
import com.my.target.b3;
import com.my.target.r;
import com.my.target.t0;
import com.my.target.x;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class z94 extends kd0 {
    public a h;

    @Deprecated
    public interface a {
        @Deprecated
        void a(z94 z94Var);

        @Deprecated
        void b(z94 z94Var);

        @Deprecated
        void c(z94 z94Var);

        @Deprecated
        void d(z94 z94Var);

        @Deprecated
        void e(z94 z94Var);

        @Deprecated
        void f(z94 z94Var);

        @Deprecated
        void g(l6a l6aVar, z94 z94Var);
    }

    public class b implements b3.a {
        public float a = -10.0f;

        public b() {
        }

        public final void a() {
            z94 z94Var = z94.this;
            a aVar = z94Var.h;
            if (aVar != null) {
                aVar.e(z94Var);
            }
        }

        public final void b() {
            z94 z94Var = z94.this;
            a aVar = z94Var.h;
            if (aVar != null) {
                aVar.b(z94Var);
            }
        }

        public final void c() {
            z94 z94Var = z94.this;
            a aVar = z94Var.h;
            if (aVar != null) {
                aVar.c(z94Var);
            }
        }

        public final void d() {
            z94 z94Var = z94.this;
            t0 t0Var = z94Var.g;
            if (t0Var != null) {
                t0Var.a(t0Var.d, System.currentTimeMillis() - t0Var.c);
                z94Var.g.b();
            }
            a aVar = z94Var.h;
            if (aVar != null) {
                aVar.a(z94Var);
            }
        }
    }

    public z94(int i, Context context) {
        super(i, context);
        String str = sh5.a;
        y14.t("Interstitial ad created. Version - 5.52.5");
    }

    @Override // defpackage.kd0
    public final void a(kia kiaVar, j8a j8aVar) {
        a aVar = this.h;
        if (aVar == null) {
            return;
        }
        try {
            l6a l6aVar = j8aVar.a;
            if (kiaVar == null) {
                if (l6aVar == null) {
                    l6aVar = l6a.o;
                }
                aVar.g(l6aVar, this);
                return;
            }
            ArrayList arrayList = kiaVar.b;
            fq9 fq9Var = kiaVar.a;
            boolean zIsEmpty = arrayList.isEmpty();
            z2a z2aVar = this.a;
            if (!zIsEmpty) {
                b bVar = new b();
                r rVarR = r.r(this, arrayList, kiaVar, bVar, bVar);
                this.f = rVarR;
                a aVar2 = this.h;
                if (rVarR != null) {
                    if (aVar2 != null) {
                        aVar2.d(this);
                    }
                    z2aVar.g.b(3);
                    return;
                } else {
                    if (aVar2 != null) {
                        aVar2.g(l6a.o, this);
                        return;
                    }
                    return;
                }
            }
            if (fq9Var != null) {
                b bVar2 = new b();
                x xVar = new x(fq9Var, z2aVar, this.b, bVar2, bVar2);
                this.f = xVar;
                xVar.e = new WeakReference(this.e);
                xVar.b();
                z2aVar.g.b(3);
                return;
            }
            a aVar3 = this.h;
            if (aVar3 != null) {
                if (l6aVar == null) {
                    l6aVar = l6a.u;
                }
                aVar3.g(l6aVar, this);
            }
        } catch (Throwable th) {
            y14.u(null, "InterstitialAd: " + th);
        }
    }
}
