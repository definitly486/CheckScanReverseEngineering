package defpackage;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.provider.Settings;
import android.view.Choreographer;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class ox4 extends Drawable implements Drawable.Callback, Animatable {
    public static final List<String> R = Arrays.asList("reduced motion", "reduced_motion", "reduced-motion", "reducedmotion");
    public static final ThreadPoolExecutor S = new ThreadPoolExecutor(0, 2, 35, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new zx4());
    public Bitmap A;
    public Canvas B;
    public Rect C;
    public RectF D;
    public ch4 E;
    public Rect F;
    public Rect G;
    public RectF H;
    public RectF I;
    public Matrix J;
    public final float[] K;
    public Matrix L;
    public boolean M;
    public dt N;
    public final Semaphore O;
    public final j11 P;
    public float Q;
    public nw4 b;
    public final ay4 c;
    public final boolean d;
    public boolean e;
    public boolean f;
    public b g;
    public final ArrayList<a> h;
    public a14 i;
    public String j;
    public fi3 k;
    public Map<String, Typeface> l;
    public String m;
    public final qx4 n;
    public boolean o;
    public boolean p;
    public ku1 q;
    public int r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public e27 x;
    public boolean y;
    public final Matrix z;

    public interface a {
        void run();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        private static final /* synthetic */ b[] $VALUES;
        public static final b NONE;
        public static final b PLAY;
        public static final b RESUME;

        static {
            b bVar = new b("NONE", 0);
            NONE = bVar;
            b bVar2 = new b("PLAY", 1);
            PLAY = bVar2;
            b bVar3 = new b("RESUME", 2);
            RESUME = bVar3;
            $VALUES = new b[]{bVar, bVar2, bVar3};
        }

        public b() {
            throw null;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }
    }

    public ox4() {
        ay4 ay4Var = new ay4();
        ay4Var.e = 1.0f;
        ay4Var.f = false;
        ay4Var.g = 0L;
        ay4Var.h = 0.0f;
        ay4Var.i = 0.0f;
        ay4Var.j = 0;
        ay4Var.k = -2.14748365E9f;
        ay4Var.l = 2.14748365E9f;
        ay4Var.n = false;
        ay4Var.o = false;
        this.c = ay4Var;
        this.d = true;
        this.e = false;
        this.f = false;
        this.g = b.NONE;
        this.h = new ArrayList<>();
        this.n = new qx4();
        this.o = false;
        this.p = true;
        this.r = 255;
        this.w = false;
        this.x = e27.AUTOMATIC;
        this.y = false;
        this.z = new Matrix();
        this.K = new float[9];
        this.M = false;
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: kx4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ox4 ox4Var = this.a;
                dt dtVar = ox4Var.N;
                if (dtVar == null) {
                    dtVar = ah4.a;
                }
                if (dtVar == dt.ENABLED) {
                    ox4Var.invalidateSelf();
                    return;
                }
                ku1 ku1Var = ox4Var.q;
                if (ku1Var != null) {
                    ku1Var.s(ox4Var.c.h());
                }
            }
        };
        this.O = new Semaphore(1);
        this.P = new j11(this, 2);
        this.Q = -3.4028235E38f;
        ay4Var.addUpdateListener(animatorUpdateListener);
    }

    public static void f(Rect rect, RectF rectF) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    public static boolean i(float f) {
        return (Float.isNaN(f) || Float.isInfinite(f)) ? false : true;
    }

    public final <T> void a(final nf4 nf4Var, final T t, final by4<T> by4Var) {
        ku1 ku1Var = this.q;
        if (ku1Var == null) {
            this.h.add(new a() { // from class: ex4
                @Override // ox4.a
                public final void run() {
                    this.a.a(nf4Var, t, by4Var);
                }
            });
            return;
        }
        boolean zIsEmpty = true;
        if (nf4Var == nf4.c) {
            ku1Var.i(by4Var, t);
        } else {
            of4 of4Var = nf4Var.b;
            if (of4Var != null) {
                of4Var.i(by4Var, t);
            } else {
                ArrayList arrayList = new ArrayList();
                this.q.a(nf4Var, 0, arrayList, new nf4(new String[0]));
                for (int i = 0; i < arrayList.size(); i++) {
                    ((nf4) arrayList.get(i)).b.i(by4Var, t);
                }
                zIsEmpty = true ^ arrayList.isEmpty();
            }
        }
        if (zIsEmpty) {
            invalidateSelf();
            if (t == vx4.C) {
                w(this.c.h());
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    public final boolean b(Context context) {
        m07 m07Var;
        if (this.e) {
            return true;
        }
        if (!this.d) {
            return false;
        }
        ah4.d.getClass();
        if (context != null) {
            Matrix matrix = ib9.a;
            if (Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f) != 0.0f) {
                m07Var = m07.STANDARD_MOTION;
            } else {
                m07Var = m07.REDUCED_MOTION;
            }
        } else {
            m07Var = m07.STANDARD_MOTION;
        }
        return m07Var == m07.STANDARD_MOTION;
    }

    public final void c() {
        nw4 nw4Var = this.b;
        if (nw4Var == null) {
            return;
        }
        td4.a aVar = yk4.a;
        Rect rect = nw4Var.k;
        List list = Collections.EMPTY_LIST;
        ku1 ku1Var = new ku1(this, new xk4(list, nw4Var, "__container", -1L, xk4.a.PRE_COMP, -1L, null, list, new ql(), 0, 0, 0, 0.0f, 0.0f, rect.width(), rect.height(), null, null, list, xk4.b.NONE, null, false, null, null, bh4.NORMAL), nw4Var.j, nw4Var);
        this.q = ku1Var;
        if (this.t) {
            ku1Var.r(true);
        }
        this.q.L = this.p;
    }

    public final void d() {
        ay4 ay4Var = this.c;
        if (ay4Var.n) {
            ay4Var.cancel();
            if (!isVisible()) {
                this.g = b.NONE;
            }
        }
        this.b = null;
        this.q = null;
        this.i = null;
        this.Q = -3.4028235E38f;
        ay4Var.m = null;
        ay4Var.k = -2.14748365E9f;
        ay4Var.l = 2.14748365E9f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        nw4 nw4Var;
        ku1 ku1Var = this.q;
        if (ku1Var == null) {
            return;
        }
        dt dtVar = this.N;
        if (dtVar == null) {
            dtVar = ah4.a;
        }
        boolean z = dtVar == dt.ENABLED;
        j11 j11Var = this.P;
        ThreadPoolExecutor threadPoolExecutor = S;
        Semaphore semaphore = this.O;
        ay4 ay4Var = this.c;
        if (z) {
            try {
                semaphore.acquire();
            } catch (InterruptedException unused) {
                dt dtVar2 = ah4.a;
                if (!z) {
                    return;
                }
                semaphore.release();
                if (ku1Var.K == ay4Var.h()) {
                    return;
                }
            } catch (Throwable th) {
                dt dtVar3 = ah4.a;
                if (z) {
                    semaphore.release();
                    if (ku1Var.K != ay4Var.h()) {
                        threadPoolExecutor.execute(j11Var);
                    }
                }
                throw th;
            }
        }
        dt dtVar4 = ah4.a;
        if (z && (nw4Var = this.b) != null) {
            float f = this.Q;
            float fH = ay4Var.h();
            this.Q = fH;
            if (Math.abs(fH - f) * nw4Var.b() >= 50.0f) {
                w(ay4Var.h());
            }
        }
        boolean z2 = this.f;
        boolean z3 = this.y;
        if (z2) {
            try {
                if (z3) {
                    l(canvas, ku1Var);
                } else {
                    g(canvas);
                }
            } catch (Throwable unused2) {
                gv4.a.getClass();
                dt dtVar5 = ah4.a;
            }
        } else if (z3) {
            l(canvas, ku1Var);
        } else {
            g(canvas);
        }
        this.M = false;
        if (z) {
            semaphore.release();
            if (ku1Var.K == ay4Var.h()) {
                return;
            }
            threadPoolExecutor.execute(j11Var);
        }
    }

    public final void e() {
        nw4 nw4Var = this.b;
        if (nw4Var == null) {
            return;
        }
        e27 e27Var = this.x;
        int i = Build.VERSION.SDK_INT;
        boolean z = nw4Var.o;
        int i2 = nw4Var.p;
        e27Var.getClass();
        int i3 = e27.a.a[e27Var.ordinal()];
        boolean z2 = false;
        if (i3 != 1 && (i3 == 2 || ((z && i < 28) || i2 > 4))) {
            z2 = true;
        }
        this.y = z2;
    }

    public final void g(Canvas canvas) {
        ku1 ku1Var = this.q;
        nw4 nw4Var = this.b;
        if (ku1Var == null || nw4Var == null) {
            return;
        }
        Matrix matrix = this.z;
        matrix.reset();
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            float fWidth = bounds.width() / nw4Var.k.width();
            float fHeight = bounds.height() / nw4Var.k.height();
            matrix.preTranslate(bounds.left, bounds.top);
            matrix.preScale(fWidth, fHeight);
        }
        ku1Var.d(canvas, matrix, this.r, null);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.r;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        nw4 nw4Var = this.b;
        if (nw4Var == null) {
            return -1;
        }
        return nw4Var.k.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        nw4 nw4Var = this.b;
        if (nw4Var == null) {
            return -1;
        }
        return nw4Var.k.width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    public final Context h() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        if (this.M) {
            return;
        }
        this.M = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        ay4 ay4Var = this.c;
        if (ay4Var == null) {
            return false;
        }
        return ay4Var.n;
    }

    public final void j() {
        this.h.clear();
        ay4 ay4Var = this.c;
        ay4Var.l(true);
        Iterator it = ay4Var.d.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorPauseListener) it.next()).onAnimationPause(ay4Var);
        }
        if (isVisible()) {
            return;
        }
        this.g = b.NONE;
    }

    public final void k() {
        if (this.q == null) {
            this.h.add(new a() { // from class: lx4
                @Override // ox4.a
                public final void run() {
                    this.a.k();
                }
            });
            return;
        }
        e();
        boolean zB = b(h());
        ay4 ay4Var = this.c;
        if (zB || ay4Var.getRepeatCount() == 0) {
            if (isVisible()) {
                ay4Var.n = true;
                boolean zK = ay4Var.k();
                Iterator it = ay4Var.c.iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorListener) it.next()).onAnimationStart(ay4Var, zK);
                }
                ay4Var.p((int) (ay4Var.k() ? ay4Var.i() : ay4Var.j()));
                ay4Var.g = 0L;
                ay4Var.j = 0;
                if (ay4Var.n) {
                    ay4Var.l(false);
                    Choreographer.getInstance().postFrameCallback(ay4Var);
                }
                this.g = b.NONE;
            } else {
                this.g = b.PLAY;
            }
        }
        if (b(h())) {
            return;
        }
        Iterator<String> it2 = R.iterator();
        u05 u05VarD = null;
        while (it2.hasNext()) {
            u05VarD = this.b.d(it2.next());
            if (u05VarD != null) {
                break;
            }
        }
        if (u05VarD != null) {
            n((int) u05VarD.b);
        } else {
            n((int) (ay4Var.e < 0.0f ? ay4Var.j() : ay4Var.i()));
        }
        ay4Var.l(true);
        ay4Var.b(ay4Var.k());
        if (isVisible()) {
            return;
        }
        this.g = b.NONE;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x00d3  */
    public final void l(Canvas canvas, ku1 ku1Var) {
        boolean z;
        if (this.b == null || ku1Var == null) {
            return;
        }
        if (this.B == null) {
            this.B = new Canvas();
            this.I = new RectF();
            this.J = new Matrix();
            this.L = new Matrix();
            this.C = new Rect();
            this.D = new RectF();
            this.E = new ch4();
            this.F = new Rect();
            this.G = new Rect();
            this.H = new RectF();
        }
        canvas.getMatrix(this.J);
        canvas.getClipBounds(this.C);
        Rect rect = this.C;
        this.D.set(rect.left, rect.top, rect.right, rect.bottom);
        this.J.mapRect(this.D);
        f(this.C, this.D);
        boolean z2 = this.p;
        RectF rectF = this.I;
        if (z2) {
            rectF.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        } else {
            ku1Var.b(rectF, null, false);
        }
        this.J.mapRect(this.I);
        Rect bounds = getBounds();
        float fWidth = bounds.width() / getIntrinsicWidth();
        float fHeight = bounds.height() / getIntrinsicHeight();
        RectF rectF2 = this.I;
        rectF2.set(rectF2.left * fWidth, rectF2.top * fHeight, rectF2.right * fWidth, rectF2.bottom * fHeight);
        Drawable.Callback callback = getCallback();
        if (callback instanceof View) {
            ViewParent parent = ((View) callback).getParent();
            if (parent instanceof ViewGroup) {
                z = !((ViewGroup) parent).getClipChildren();
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        if (!z) {
            RectF rectF3 = this.I;
            Rect rect2 = this.C;
            rectF3.intersect(rect2.left, rect2.top, rect2.right, rect2.bottom);
        }
        RectF rectF4 = this.I;
        if (!i(rectF4.left) || !i(rectF4.top) || !i(rectF4.right) || !i(rectF4.bottom)) {
            gv4.b("Skipping software rendering: transformed bounds contain non-finite values.");
            return;
        }
        int iCeil = (int) Math.ceil(this.I.width());
        int iCeil2 = (int) Math.ceil(this.I.height());
        if (iCeil <= 0 || iCeil2 <= 0) {
            gv4.b("Skipping software rendering: transformed bounds have negative values.");
            return;
        }
        long j = ((long) iCeil) * ((long) iCeil2);
        if (j > 50000000) {
            gv4.b("Skipping software rendering: bitmap request exceeds safe pixel count (" + j + ")");
            return;
        }
        Bitmap bitmap = this.A;
        if (bitmap == null || bitmap.getWidth() < iCeil || this.A.getHeight() < iCeil2) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iCeil, iCeil2, Bitmap.Config.ARGB_8888);
            this.A = bitmapCreateBitmap;
            this.B.setBitmap(bitmapCreateBitmap);
            this.M = true;
        } else if (this.A.getWidth() > iCeil || this.A.getHeight() > iCeil2) {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(this.A, 0, 0, iCeil, iCeil2);
            this.A = bitmapCreateBitmap2;
            this.B.setBitmap(bitmapCreateBitmap2);
            this.M = true;
        }
        if (this.M) {
            Matrix matrix = this.J;
            float[] fArr = this.K;
            matrix.getValues(fArr);
            float f = fArr[0];
            float f2 = fArr[4];
            Matrix matrix2 = this.J;
            Matrix matrix3 = this.z;
            matrix3.set(matrix2);
            matrix3.preScale(fWidth, fHeight);
            RectF rectF5 = this.I;
            matrix3.postTranslate(-rectF5.left, -rectF5.top);
            matrix3.postScale(1.0f / f, 1.0f / f2);
            this.A.eraseColor(0);
            this.B.setMatrix(ib9.a);
            this.B.scale(f, f2);
            ku1Var.d(this.B, matrix3, this.r, null);
            this.J.invert(this.L);
            this.L.mapRect(this.H, this.I);
            f(this.G, this.H);
        }
        this.F.set(0, 0, iCeil, iCeil2);
        canvas.drawBitmap(this.A, this.F, this.G, this.E);
    }

    public final void m() {
        if (this.q == null) {
            this.h.add(new a() { // from class: gx4
                @Override // ox4.a
                public final void run() {
                    this.a.m();
                }
            });
            return;
        }
        e();
        boolean zB = b(h());
        ay4 ay4Var = this.c;
        if (zB || ay4Var.getRepeatCount() == 0) {
            if (isVisible()) {
                ay4Var.n = true;
                ay4Var.l(false);
                Choreographer.getInstance().postFrameCallback(ay4Var);
                ay4Var.g = 0L;
                if (ay4Var.k() && ay4Var.i == ay4Var.j()) {
                    ay4Var.p(ay4Var.i());
                } else if (!ay4Var.k() && ay4Var.i == ay4Var.i()) {
                    ay4Var.p(ay4Var.j());
                }
                Iterator it = ay4Var.d.iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorPauseListener) it.next()).onAnimationResume(ay4Var);
                }
                this.g = b.NONE;
            } else {
                this.g = b.RESUME;
            }
        }
        if (b(h())) {
            return;
        }
        n((int) (ay4Var.e < 0.0f ? ay4Var.j() : ay4Var.i()));
        ay4Var.l(true);
        ay4Var.b(ay4Var.k());
        if (isVisible()) {
            return;
        }
        this.g = b.NONE;
    }

    public final void n(final int i) {
        if (this.b != null) {
            this.c.p(i);
        } else {
            this.h.add(new a() { // from class: zw4
                @Override // ox4.a
                public final void run() {
                    this.a.n(i);
                }
            });
        }
    }

    public final void o(final int i) {
        if (this.b == null) {
            this.h.add(new a() { // from class: cx4
                @Override // ox4.a
                public final void run() {
                    this.a.o(i);
                }
            });
        } else {
            ay4 ay4Var = this.c;
            ay4Var.q(ay4Var.k, i + 0.99f);
        }
    }

    public final void p(final String str) {
        nw4 nw4Var = this.b;
        if (nw4Var == null) {
            this.h.add(new a() { // from class: ix4
                @Override // ox4.a
                public final void run() {
                    this.a.p(str);
                }
            });
            return;
        }
        u05 u05VarD = nw4Var.d(str);
        if (u05VarD != null) {
            o((int) (u05VarD.b + u05VarD.c));
        } else {
            fg.c(me0.c("Cannot find marker with name ", str, "."));
        }
    }

    public final void q(final int i, final int i2) {
        if (this.b == null) {
            this.h.add(new a() { // from class: bx4
                @Override // ox4.a
                public final void run() {
                    this.a.q(i, i2);
                }
            });
        } else {
            this.c.q(i, i2 + 0.99f);
        }
    }

    public final void r(final String str) {
        nw4 nw4Var = this.b;
        if (nw4Var == null) {
            this.h.add(new a() { // from class: yw4
                @Override // ox4.a
                public final void run() {
                    this.a.r(str);
                }
            });
            return;
        }
        u05 u05VarD = nw4Var.d(str);
        if (u05VarD == null) {
            fg.c(me0.c("Cannot find marker with name ", str, "."));
        } else {
            int i = (int) u05VarD.b;
            q(i, ((int) u05VarD.c) + i);
        }
    }

    public final void s(final String str, final String str2, final boolean z) {
        nw4 nw4Var = this.b;
        if (nw4Var == null) {
            this.h.add(new a() { // from class: hx4
                @Override // ox4.a
                public final void run() {
                    this.a.s(str, str2, z);
                }
            });
            return;
        }
        u05 u05VarD = nw4Var.d(str);
        if (u05VarD == null) {
            fg.c(me0.c("Cannot find marker with name ", str, "."));
            return;
        }
        int i = (int) u05VarD.b;
        u05 u05VarD2 = this.b.d(str2);
        if (u05VarD2 != null) {
            q(i, (int) (u05VarD2.b + (z ? 1.0f : 0.0f)));
        } else {
            fg.c(me0.c("Cannot find marker with name ", str2, "."));
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.r = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        gv4.b("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean zIsVisible = isVisible();
        boolean visible = super.setVisible(z, z2);
        if (z) {
            b bVar = this.g;
            if (bVar == b.PLAY) {
                k();
                return visible;
            }
            if (bVar == b.RESUME) {
                m();
                return visible;
            }
        } else {
            if (this.c.n) {
                j();
                this.g = b.RESUME;
                return visible;
            }
            if (zIsVisible) {
                this.g = b.NONE;
            }
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        k();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.h.clear();
        ay4 ay4Var = this.c;
        ay4Var.l(true);
        ay4Var.b(ay4Var.k());
        if (isVisible()) {
            return;
        }
        this.g = b.NONE;
    }

    public final void t(final float f, final float f2) {
        nw4 nw4Var = this.b;
        if (nw4Var == null) {
            this.h.add(new a() { // from class: ax4
                @Override // ox4.a
                public final void run() {
                    this.a.t(f, f2);
                }
            });
        } else {
            int iF = (int) hb5.f(nw4Var.l, nw4Var.m, f);
            nw4 nw4Var2 = this.b;
            q(iF, (int) hb5.f(nw4Var2.l, nw4Var2.m, f2));
        }
    }

    public final void u(final int i) {
        if (this.b == null) {
            this.h.add(new a() { // from class: dx4
                @Override // ox4.a
                public final void run() {
                    this.a.u(i);
                }
            });
        } else {
            ay4 ay4Var = this.c;
            ay4Var.q(i, (int) ay4Var.l);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public final void v(final String str) {
        nw4 nw4Var = this.b;
        if (nw4Var == null) {
            this.h.add(new a() { // from class: jx4
                @Override // ox4.a
                public final void run() {
                    this.a.v(str);
                }
            });
            return;
        }
        u05 u05VarD = nw4Var.d(str);
        if (u05VarD != null) {
            u((int) u05VarD.b);
        } else {
            fg.c(me0.c("Cannot find marker with name ", str, "."));
        }
    }

    public final void w(final float f) {
        nw4 nw4Var = this.b;
        if (nw4Var == null) {
            this.h.add(new a() { // from class: nx4
                @Override // ox4.a
                public final void run() {
                    this.a.w(f);
                }
            });
        } else {
            dt dtVar = ah4.a;
            this.c.p(hb5.f(nw4Var.l, nw4Var.m, f));
        }
    }
}
