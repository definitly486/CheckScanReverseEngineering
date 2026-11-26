package defpackage;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ld0<K, A> {
    public final c<K> c;
    public by4<A> e;
    public final ArrayList a = new ArrayList(1);
    public boolean b = false;
    public float d = 0.0f;
    public A f = null;
    public float g = -1.0f;
    public float h = -1.0f;

    public interface a {
        void e();
    }

    public static final class b<T> implements c<T> {
        @Override // ld0.c
        public final vf4<T> a() {
            throw new IllegalStateException("not implemented");
        }

        @Override // ld0.c
        public final float b() {
            return 0.0f;
        }

        @Override // ld0.c
        public final boolean c(float f) {
            throw new IllegalStateException("not implemented");
        }

        @Override // ld0.c
        public final boolean d(float f) {
            return false;
        }

        @Override // ld0.c
        public final float e() {
            return 1.0f;
        }

        @Override // ld0.c
        public final boolean isEmpty() {
            return true;
        }
    }

    public interface c<T> {
        vf4<T> a();

        float b();

        boolean c(float f);

        boolean d(float f);

        float e();

        boolean isEmpty();
    }

    public static final class d<T> implements c<T> {
        public final List<? extends vf4<T>> a;
        public vf4<T> c = null;
        public float d = -1.0f;
        public vf4<T> b = f(0.0f);

        public d(List<? extends vf4<T>> list) {
            this.a = list;
        }

        @Override // ld0.c
        public final vf4<T> a() {
            return this.b;
        }

        @Override // ld0.c
        public final float b() {
            return this.a.get(0).b();
        }

        @Override // ld0.c
        public final boolean c(float f) {
            vf4<T> vf4Var = this.c;
            vf4<T> vf4Var2 = this.b;
            if (vf4Var == vf4Var2 && this.d == f) {
                return true;
            }
            this.c = vf4Var2;
            this.d = f;
            return false;
        }

        @Override // ld0.c
        public final boolean d(float f) {
            vf4<T> vf4Var = this.b;
            if (f >= vf4Var.b() && f < vf4Var.a()) {
                return !this.b.c();
            }
            this.b = f(f);
            return true;
        }

        @Override // ld0.c
        public final float e() {
            return ((vf4) xy.d(1, this.a)).a();
        }

        public final vf4<T> f(float f) {
            List<? extends vf4<T>> list = this.a;
            vf4<T> vf4Var = (vf4) xy.d(1, list);
            if (f >= vf4Var.b()) {
                return vf4Var;
            }
            for (int size = list.size() - 2; size >= 1; size--) {
                vf4<T> vf4Var2 = list.get(size);
                if (this.b != vf4Var2 && f >= vf4Var2.b() && f < vf4Var2.a()) {
                    return vf4Var2;
                }
            }
            return list.get(0);
        }

        @Override // ld0.c
        public final boolean isEmpty() {
            return false;
        }
    }

    public static final class e<T> implements c<T> {
        public final vf4<T> a;
        public float b = -1.0f;

        public e(List<? extends vf4<T>> list) {
            this.a = list.get(0);
        }

        @Override // ld0.c
        public final vf4<T> a() {
            return this.a;
        }

        @Override // ld0.c
        public final float b() {
            return this.a.b();
        }

        @Override // ld0.c
        public final boolean c(float f) {
            if (this.b == f) {
                return true;
            }
            this.b = f;
            return false;
        }

        @Override // ld0.c
        public final boolean d(float f) {
            return !this.a.c();
        }

        @Override // ld0.c
        public final float e() {
            return this.a.a();
        }

        @Override // ld0.c
        public final boolean isEmpty() {
            return false;
        }
    }

    public ld0(List<? extends vf4<K>> list) {
        c<K> eVar;
        if (list.isEmpty()) {
            eVar = new b<>();
        } else {
            eVar = list.size() == 1 ? new e<>(list) : new d<>(list);
        }
        this.c = eVar;
    }

    public final void a(a aVar) {
        this.a.add(aVar);
    }

    public final vf4<K> b() {
        dt dtVar = ah4.a;
        return this.c.a();
    }

    public float c() {
        float f = this.h;
        if (f != -1.0f) {
            return f;
        }
        float fE = this.c.e();
        this.h = fE;
        return fE;
    }

    public final float d() {
        Interpolator interpolator;
        vf4<K> vf4VarB = b();
        if (vf4VarB == null || vf4VarB.c() || (interpolator = vf4VarB.d) == null) {
            return 0.0f;
        }
        return interpolator.getInterpolation(e());
    }

    public final float e() {
        if (this.b) {
            return 0.0f;
        }
        vf4<K> vf4VarB = b();
        if (vf4VarB.c()) {
            return 0.0f;
        }
        return (this.d - vf4VarB.b()) / (vf4VarB.a() - vf4VarB.b());
    }

    public A f() {
        float fE = e();
        if (this.e == null && this.c.c(fE) && !l()) {
            return this.f;
        }
        vf4<K> vf4VarB = b();
        Interpolator interpolator = vf4VarB.e;
        Interpolator interpolator2 = vf4VarB.f;
        A aG = (interpolator == null || interpolator2 == null) ? g(vf4VarB, d()) : h(vf4VarB, fE, interpolator.getInterpolation(fE), interpolator2.getInterpolation(fE));
        this.f = aG;
        return aG;
    }

    public abstract A g(vf4<K> vf4Var, float f);

    public A h(vf4<K> vf4Var, float f, float f2, float f3) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    public void i() {
        dt dtVar = ah4.a;
        int i = 0;
        while (true) {
            ArrayList arrayList = this.a;
            if (i >= arrayList.size()) {
                dt dtVar2 = ah4.a;
                return;
            } else {
                ((a) arrayList.get(i)).e();
                i++;
            }
        }
    }

    public void j(float f) {
        dt dtVar = ah4.a;
        c<K> cVar = this.c;
        if (cVar.isEmpty()) {
            return;
        }
        float fB = this.g;
        if (fB == -1.0f) {
            fB = cVar.b();
            this.g = fB;
        }
        float f2 = fB;
        if (f < fB) {
            if (f2 == -1.0f) {
                f = cVar.b();
                this.g = f;
            } else {
                f = f2;
            }
        } else if (f > c()) {
            f = c();
        }
        if (f == this.d) {
            return;
        }
        this.d = f;
        if (cVar.d(f)) {
            i();
        }
    }

    public final void k(by4<A> by4Var) {
        by4<A> by4Var2 = this.e;
        if (by4Var2 != null) {
            by4Var2.getClass();
        }
        this.e = by4Var;
    }

    public boolean l() {
        return false;
    }
}
