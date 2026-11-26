package defpackage;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import androidx.collection.SimpleArrayMap;
import defpackage.ee0;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ee0<T extends ee0<T>> implements Cloneable {
    public int b;
    public int e;
    public ShapeDrawable f;
    public int g;
    public boolean l;
    public boolean q;
    public Resources.Theme r;
    public boolean s;
    public boolean u;
    public sn2 c = sn2.d;
    public jg6 d = jg6.NORMAL;
    public boolean h = true;
    public int i = -1;
    public int j = -1;
    public kf4 k = px2.b;
    public boolean m = true;
    public xz5 n = new xz5();
    public zx0 o = new zx0();
    public Class<?> p = Object.class;
    public boolean t = true;

    public static boolean k(int i, int i2) {
        return (i & i2) != 0;
    }

    public final ee0 A(uq2 uq2Var, lj0 lj0Var) {
        if (this.s) {
            return clone().A(uq2Var, lj0Var);
        }
        qz5 qz5Var = uq2.f;
        r96.c(uq2Var, "Argument must not be null");
        w(qz5Var, uq2Var);
        return B(lj0Var, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final T B(s19<Bitmap> s19Var, boolean z) {
        if (this.s) {
            return (T) clone().B(s19Var, z);
        }
        ps2 ps2Var = new ps2(s19Var, z);
        C(Bitmap.class, s19Var, z);
        C(Drawable.class, ps2Var, z);
        C(BitmapDrawable.class, ps2Var, z);
        C(up3.class, new xp3(s19Var), z);
        v();
        return this;
    }

    public final <Y> T C(Class<Y> cls, s19<Y> s19Var, boolean z) {
        if (this.s) {
            return (T) clone().C(cls, s19Var, z);
        }
        r96.b(s19Var);
        this.o.put(cls, s19Var);
        int i = this.b;
        this.m = true;
        this.b = 67584 | i;
        this.t = false;
        if (z) {
            this.b = i | 198656;
            this.l = true;
        }
        v();
        return this;
    }

    public final T D(s19<Bitmap>... s19VarArr) {
        if (s19VarArr.length > 1) {
            return (T) B(new cg5(s19VarArr), true);
        }
        if (s19VarArr.length == 1) {
            return (T) B(s19VarArr[0], true);
        }
        v();
        return this;
    }

    public final ee0 E() {
        if (this.s) {
            return clone().E();
        }
        this.u = true;
        this.b |= 1048576;
        v();
        return this;
    }

    public T b(ee0<?> ee0Var) {
        if (this.s) {
            return (T) clone().b(ee0Var);
        }
        int i = ee0Var.b;
        if (k(ee0Var.b, 1048576)) {
            this.u = ee0Var.u;
        }
        if (k(ee0Var.b, 4)) {
            this.c = ee0Var.c;
        }
        if (k(ee0Var.b, 8)) {
            this.d = ee0Var.d;
        }
        if (k(ee0Var.b, 16)) {
            this.e = 0;
            this.b &= -33;
        }
        if (k(ee0Var.b, 32)) {
            this.e = ee0Var.e;
            this.b &= -17;
        }
        if (k(ee0Var.b, 64)) {
            this.f = ee0Var.f;
            this.g = 0;
            this.b &= -129;
        }
        if (k(ee0Var.b, 128)) {
            this.g = ee0Var.g;
            this.f = null;
            this.b &= -65;
        }
        if (k(ee0Var.b, 256)) {
            this.h = ee0Var.h;
        }
        if (k(ee0Var.b, 512)) {
            this.j = ee0Var.j;
            this.i = ee0Var.i;
        }
        if (k(ee0Var.b, 1024)) {
            this.k = ee0Var.k;
        }
        if (k(ee0Var.b, 4096)) {
            this.p = ee0Var.p;
        }
        if (k(ee0Var.b, 8192)) {
            this.b &= -16385;
        }
        if (k(ee0Var.b, 16384)) {
            this.b &= -8193;
        }
        if (k(ee0Var.b, 32768)) {
            this.r = ee0Var.r;
        }
        if (k(ee0Var.b, 65536)) {
            this.m = ee0Var.m;
        }
        if (k(ee0Var.b, 131072)) {
            this.l = ee0Var.l;
        }
        if (k(ee0Var.b, 2048)) {
            this.o.putAll((Map) ee0Var.o);
            this.t = ee0Var.t;
        }
        if (!this.m) {
            this.o.clear();
            int i2 = this.b;
            this.l = false;
            this.b = i2 & (-133121);
            this.t = true;
        }
        this.b |= ee0Var.b;
        this.n.b.putAll((SimpleArrayMap) ee0Var.n.b);
        v();
        return this;
    }

    @Override // 
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public T clone() {
        try {
            T t = (T) super.clone();
            xz5 xz5Var = new xz5();
            t.n = xz5Var;
            xz5Var.b.putAll((SimpleArrayMap) this.n.b);
            zx0 zx0Var = new zx0();
            t.o = zx0Var;
            zx0Var.putAll((Map) this.o);
            t.q = false;
            t.s = false;
            return t;
        } catch (CloneNotSupportedException e) {
            ti0.f(e);
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof ee0) {
            return j((ee0) obj);
        }
        return false;
    }

    public final T f(Class<?> cls) {
        if (this.s) {
            return (T) clone().f(cls);
        }
        this.p = cls;
        this.b |= 4096;
        v();
        return this;
    }

    public final T g(sn2 sn2Var) {
        if (this.s) {
            return (T) clone().g(sn2Var);
        }
        r96.c(sn2Var, "Argument must not be null");
        this.c = sn2Var;
        this.b |= 4;
        v();
        return this;
    }

    public final T h(int i) {
        if (this.s) {
            return (T) clone().h(i);
        }
        this.e = i;
        this.b = (this.b | 32) & (-17);
        v();
        return this;
    }

    public int hashCode() {
        return eb9.i(eb9.i(eb9.i(eb9.i(eb9.i(eb9.i(eb9.i(eb9.h(0, eb9.h(0, eb9.h(this.m ? 1 : 0, eb9.h(this.l ? 1 : 0, eb9.h(this.j, eb9.h(this.i, eb9.h(this.h ? 1 : 0, eb9.i(eb9.h(0, eb9.i(eb9.h(this.g, eb9.i(eb9.h(this.e, eb9.g(1.0f, 17)), null)), this.f)), null)))))))), this.c), this.d), this.n), this.o), this.p), this.k), this.r);
    }

    public final T i() {
        return (T) u(uq2.a, new dc3(), true);
    }

    public final boolean j(ee0<?> ee0Var) {
        ee0Var.getClass();
        return Float.compare(1.0f, 1.0f) == 0 && this.e == ee0Var.e && this.g == ee0Var.g && eb9.b(this.f, ee0Var.f) && this.h == ee0Var.h && this.i == ee0Var.i && this.j == ee0Var.j && this.l == ee0Var.l && this.m == ee0Var.m && this.c.equals(ee0Var.c) && this.d == ee0Var.d && this.n.equals(ee0Var.n) && this.o.equals(ee0Var.o) && this.p.equals(ee0Var.p) && eb9.b(this.k, ee0Var.k) && eb9.b(this.r, ee0Var.r);
    }

    public final ee0 l(uq2 uq2Var, lj0 lj0Var) {
        if (this.s) {
            return clone().l(uq2Var, lj0Var);
        }
        qz5 qz5Var = uq2.f;
        r96.c(uq2Var, "Argument must not be null");
        w(qz5Var, uq2Var);
        return B(lj0Var, false);
    }

    public final T p(int i, int i2) {
        if (this.s) {
            return (T) clone().p(i, i2);
        }
        this.j = i;
        this.i = i2;
        this.b |= 512;
        v();
        return this;
    }

    public final T q(int i) {
        if (this.s) {
            return (T) clone().q(i);
        }
        this.g = i;
        int i2 = this.b | 128;
        this.f = null;
        this.b = i2 & (-65);
        v();
        return this;
    }

    public final ee0 r(ShapeDrawable shapeDrawable) {
        if (this.s) {
            return clone().r(shapeDrawable);
        }
        this.f = shapeDrawable;
        int i = this.b | 64;
        this.g = 0;
        this.b = i & (-129);
        v();
        return this;
    }

    public final T s(jg6 jg6Var) {
        if (this.s) {
            return (T) clone().s(jg6Var);
        }
        r96.c(jg6Var, "Argument must not be null");
        this.d = jg6Var;
        this.b |= 8;
        v();
        return this;
    }

    public final T t(qz5<?> qz5Var) {
        if (this.s) {
            return (T) clone().t(qz5Var);
        }
        this.n.b.remove(qz5Var);
        v();
        return this;
    }

    public final ee0 u(uq2 uq2Var, lj0 lj0Var, boolean z) {
        ee0 ee0VarA = z ? A(uq2Var, lj0Var) : l(uq2Var, lj0Var);
        ee0VarA.t = true;
        return ee0VarA;
    }

    public final void v() {
        if (this.q) {
            ah.f("You cannot modify locked T, consider clone()");
        }
    }

    public final <Y> T w(qz5<Y> qz5Var, Y y) {
        if (this.s) {
            return (T) clone().w(qz5Var, y);
        }
        r96.b(qz5Var);
        this.n.b.put(qz5Var, y);
        v();
        return this;
    }

    public final T x(kf4 kf4Var) {
        if (this.s) {
            return (T) clone().x(kf4Var);
        }
        this.k = kf4Var;
        this.b |= 1024;
        v();
        return this;
    }

    public final ee0 y() {
        if (this.s) {
            return clone().y();
        }
        this.h = false;
        this.b |= 256;
        v();
        return this;
    }

    public final T z(Resources.Theme theme) {
        if (this.s) {
            return (T) clone().z(theme);
        }
        this.r = theme;
        int i = this.b;
        if (theme != null) {
            this.b = i | 32768;
            return (T) w(k47.b, theme);
        }
        this.b = (-32769) & i;
        return (T) t(k47.b);
    }
}
