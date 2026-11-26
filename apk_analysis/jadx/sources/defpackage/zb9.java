package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zb9 extends tm {
    public static final ThreadLocal<f> r = new ThreadLocal<>();
    public static final a s = new a();
    public static final b t = new b();
    public static final c u = new c();
    public static final d v = new d();
    public static final e w = new e();
    public static final AccelerateDecelerateInterpolator x = new AccelerateDecelerateInterpolator();
    public static final long y = 10;
    public long c;
    public long h;
    public gs6[] p;
    public HashMap<String, gs6> q;
    public long d = -1;
    public boolean e = false;
    public int f = 0;
    public boolean g = false;
    public int i = 0;
    public boolean j = false;
    public boolean k = false;
    public long l = 300;
    public final int m = 1;
    public Interpolator n = x;
    public ArrayList<g> o = null;

    public static class a extends ThreadLocal<ArrayList<zb9>> {
        @Override // java.lang.ThreadLocal
        public final ArrayList<zb9> initialValue() {
            return new ArrayList<>();
        }
    }

    public static class b extends ThreadLocal<ArrayList<zb9>> {
        @Override // java.lang.ThreadLocal
        public final ArrayList<zb9> initialValue() {
            return new ArrayList<>();
        }
    }

    public static class c extends ThreadLocal<ArrayList<zb9>> {
        @Override // java.lang.ThreadLocal
        public final ArrayList<zb9> initialValue() {
            return new ArrayList<>();
        }
    }

    public static class d extends ThreadLocal<ArrayList<zb9>> {
        @Override // java.lang.ThreadLocal
        public final ArrayList<zb9> initialValue() {
            return new ArrayList<>();
        }
    }

    public static class e extends ThreadLocal<ArrayList<zb9>> {
        @Override // java.lang.ThreadLocal
        public final ArrayList<zb9> initialValue() {
            return new ArrayList<>();
        }
    }

    public static class f extends Handler {
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            boolean z;
            ArrayList<zb9> arrayList = zb9.s.get();
            ArrayList<zb9> arrayList2 = zb9.u.get();
            int i = message.what;
            if (i == 0) {
                ArrayList<zb9> arrayList3 = zb9.t.get();
                z = arrayList.size() <= 0 && arrayList2.size() <= 0;
                while (arrayList3.size() > 0) {
                    ArrayList arrayList4 = (ArrayList) arrayList3.clone();
                    arrayList3.clear();
                    int size = arrayList4.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        zb9 zb9Var = (zb9) arrayList4.get(i2);
                        zb9Var.getClass();
                        zb9Var.k();
                        zb9.s.get().add(zb9Var);
                    }
                }
            } else if (i != 1) {
                return;
            } else {
                z = true;
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            ArrayList<zb9> arrayList5 = zb9.w.get();
            ArrayList<zb9> arrayList6 = zb9.v.get();
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                zb9 zb9Var2 = arrayList2.get(i3);
                if (zb9Var2.g) {
                    long j = jCurrentAnimationTimeMillis - zb9Var2.h;
                    if (j > 0) {
                        zb9Var2.c = jCurrentAnimationTimeMillis - j;
                        zb9Var2.i = 1;
                        arrayList5.add(zb9Var2);
                    }
                } else {
                    zb9Var2.g = true;
                    zb9Var2.h = jCurrentAnimationTimeMillis;
                }
            }
            int size3 = arrayList5.size();
            if (size3 > 0) {
                for (int i4 = 0; i4 < size3; i4++) {
                    zb9 zb9Var3 = arrayList5.get(i4);
                    zb9Var3.k();
                    zb9.s.get().add(zb9Var3);
                    zb9Var3.j = true;
                    arrayList2.remove(zb9Var3);
                }
                arrayList5.clear();
            }
            int size4 = arrayList.size();
            int i5 = 0;
            while (i5 < size4) {
                zb9 zb9Var4 = arrayList.get(i5);
                if (zb9Var4.f(jCurrentAnimationTimeMillis)) {
                    arrayList6.add(zb9Var4);
                }
                if (arrayList.size() == size4) {
                    i5++;
                } else {
                    size4--;
                    arrayList6.remove(zb9Var4);
                }
            }
            if (arrayList6.size() > 0) {
                for (int i6 = 0; i6 < arrayList6.size(); i6++) {
                    arrayList6.get(i6).i();
                }
                arrayList6.clear();
            }
            if (z) {
                if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                    return;
                }
                sendEmptyMessageDelayed(1, Math.max(0L, zb9.y - (AnimationUtils.currentAnimationTimeMillis() - jCurrentAnimationTimeMillis)));
            }
        }
    }

    public interface g {
        void a(zb9 zb9Var);
    }

    public static zb9 l(float... fArr) {
        zb9 zb9Var = new zb9();
        if (fArr.length == 0) {
            return zb9Var;
        }
        gs6[] gs6VarArr = zb9Var.p;
        if (gs6VarArr == null || gs6VarArr.length == 0) {
            d31 d31Var = gs6.h;
            gs6.a aVar = new gs6.a();
            aVar.i(fArr);
            gs6[] gs6VarArr2 = {aVar};
            zb9Var.p = gs6VarArr2;
            HashMap<String, gs6> map = new HashMap<>(1);
            zb9Var.q = map;
            gs6 gs6Var = gs6VarArr2[0];
            map.put(gs6Var.b, gs6Var);
            zb9Var.k = false;
        } else {
            gs6VarArr[0].i(fArr);
        }
        zb9Var.k = false;
        return zb9Var;
    }

    public final boolean f(long j) {
        int i = this.i;
        boolean z = true;
        if (i == 0) {
            this.i = 1;
            long j2 = this.d;
            if (j2 < 0) {
                this.c = j;
            } else {
                this.c = j - j2;
                this.d = -1L;
            }
            i = 1;
        }
        if (i != 1 && i != 2) {
            return false;
        }
        long j3 = this.l;
        float fMin = j3 > 0 ? (j - this.c) / j3 : 1.0f;
        if (fMin < 1.0f) {
            z = false;
        } else if (this.f >= 0) {
            fMin = Math.min(fMin, 1.0f);
        } else {
            ArrayList<tm.a> arrayList = this.b;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.b.get(i2).getClass();
                }
            }
            if (this.m == 2) {
                this.e = !this.e;
            }
            this.f += (int) fMin;
            fMin %= 1.0f;
            this.c += this.l;
            z = false;
        }
        if (this.e) {
            fMin = 1.0f - fMin;
        }
        float interpolation = this.n.getInterpolation(fMin);
        int length = this.p.length;
        for (int i3 = 0; i3 < length; i3++) {
            this.p[i3].b(interpolation);
        }
        ArrayList<g> arrayList2 = this.o;
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                this.o.get(i4).a(this);
            }
        }
        return z;
    }

    @Override // defpackage.tm
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final zb9 clone() {
        zb9 zb9Var = (zb9) super.clone();
        ArrayList<g> arrayList = this.o;
        if (arrayList != null) {
            zb9Var.o = new ArrayList<>();
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                zb9Var.o.add(arrayList.get(i));
            }
        }
        zb9Var.d = -1L;
        zb9Var.e = false;
        zb9Var.f = 0;
        zb9Var.k = false;
        zb9Var.i = 0;
        zb9Var.g = false;
        gs6[] gs6VarArr = this.p;
        if (gs6VarArr != null) {
            int length = gs6VarArr.length;
            zb9Var.p = new gs6[length];
            zb9Var.q = new HashMap<>(length);
            for (int i2 = 0; i2 < length; i2++) {
                gs6 gs6VarE = gs6VarArr[i2].clone();
                zb9Var.p[i2] = gs6VarE;
                zb9Var.q.put(gs6VarE.b, gs6VarE);
            }
        }
        return zb9Var;
    }

    public final void i() {
        ArrayList<tm.a> arrayList;
        s.get().remove(this);
        t.get().remove(this);
        u.get().remove(this);
        this.i = 0;
        if (this.j && (arrayList = this.b) != null) {
            ArrayList arrayList2 = (ArrayList) arrayList.clone();
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                ((tm.a) arrayList2.get(i)).onAnimationEnd();
            }
        }
        this.j = false;
    }

    public final Object j() {
        gs6[] gs6VarArr = this.p;
        if (gs6VarArr == null || gs6VarArr.length <= 0) {
            return null;
        }
        return gs6VarArr[0].h();
    }

    public final void k() {
        if (this.k) {
            return;
        }
        int length = this.p.length;
        for (int i = 0; i < length; i++) {
            gs6 gs6Var = this.p[i];
            u39 u39Var = gs6Var.f;
            if (u39Var == null) {
                Class cls = gs6Var.c;
                u39Var = cls == Integer.class ? gs6.h : cls == Float.class ? gs6.i : null;
                gs6Var.f = u39Var;
            }
            if (u39Var != null) {
                gs6Var.d.c = u39Var;
            }
        }
        this.k = true;
    }

    public final void p(long j) {
        if (j >= 0) {
            this.l = j;
        } else {
            fg.c(r01.c(j, "Animators cannot have negative duration: "));
        }
    }

    public final void q() {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        this.e = false;
        this.f = 0;
        this.i = 0;
        this.g = false;
        t.get().add(this);
        long jCurrentAnimationTimeMillis = (!this.k || this.i == 0) ? 0L : AnimationUtils.currentAnimationTimeMillis() - this.c;
        k();
        long jCurrentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
        if (this.i != 1) {
            this.d = jCurrentAnimationTimeMillis;
            this.i = 2;
        }
        this.c = jCurrentAnimationTimeMillis2 - jCurrentAnimationTimeMillis;
        f(jCurrentAnimationTimeMillis2);
        this.i = 0;
        this.j = true;
        ArrayList<tm.a> arrayList = this.b;
        if (arrayList != null) {
            ArrayList arrayList2 = (ArrayList) arrayList.clone();
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                ((tm.a) arrayList2.get(i)).getClass();
            }
        }
        ThreadLocal<f> threadLocal = r;
        f fVar = threadLocal.get();
        if (fVar == null) {
            fVar = new f();
            threadLocal.set(fVar);
        }
        fVar.sendEmptyMessage(0);
    }

    public final String toString() {
        String string = "ValueAnimator@" + Integer.toHexString(hashCode());
        if (this.p != null) {
            for (int i = 0; i < this.p.length; i++) {
                StringBuilder sbD = fh.d(string, "\n    ");
                sbD.append(this.p[i].toString());
                string = sbD.toString();
            }
        }
        return string;
    }
}
