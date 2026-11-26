package com.warefly.checkscan.calendarspinner.widgets;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.Scroller;
import com.warefly.checkscan.R;
import defpackage.aa4;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.j59;
import defpackage.js6;
import defpackage.k57;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.m92;
import defpackage.o2;
import defpackage.oc2;
import defpackage.rz0;
import defpackage.zw6;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class WheelPicker<V> extends View {
    public static final /* synthetic */ int p0 = 0;
    public final int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public final int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public int W;
    public final int a0;
    public final TypedArray b;
    public boolean b0;
    public m92 c;
    public boolean c0;
    public final Handler d;
    public boolean d0;
    public V e;
    public boolean e0;
    public int f;
    public boolean f0;
    public a<V> g;
    public boolean g0;
    public final Paint h;
    public boolean h0;
    public final Scroller i;
    public boolean i0;
    public VelocityTracker j;
    public boolean j0;
    public final Rect k;
    public final Locale k0;
    public final Rect l;
    public final fh8 l0;
    public final Rect m;
    public int m0;
    public final Rect n;
    public final fh8 n0;
    public final Camera o;
    public final f o0;
    public final Matrix p;
    public final Matrix q;
    public String r;
    public int s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;
    public int z;

    public static final class a<V> {
        public final ArrayList a;

        public a(int i) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            this.a = arrayList2;
            arrayList2.addAll(arrayList);
        }

        public final V a(int i) {
            int iB = b();
            ArrayList arrayList = this.a;
            if (arrayList == null || arrayList.isEmpty()) {
                return null;
            }
            return (V) arrayList.get((i + iB) % iB);
        }

        public final int b() {
            ArrayList arrayList = this.a;
            if (arrayList != null) {
                return arrayList.size();
            }
            return 0;
        }

        public final String c(int i) {
            Object aVar;
            try {
                ArrayList arrayList = this.a;
                if (arrayList == null) {
                    throw new IllegalStateException("Required value was null.");
                }
                aVar = String.valueOf(arrayList.get(i));
                Object str = new String();
                if (aVar instanceof k57.a) {
                    aVar = str;
                }
                return (String) aVar;
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
        }
    }

    public interface b<PICKER extends WheelPicker<V>, V> {
    }

    public interface c {
    }

    public interface d {
    }

    public static final class e extends gh4 implements ll3<String> {
        public final /* synthetic */ WheelPicker<V> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(WheelPicker<V> wheelPicker) {
            super(0);
            this.f = wheelPicker;
        }

        @Override // defpackage.ll3
        public final String invoke() {
            return this.f.j(R.string.picker_today);
        }
    }

    public static final class f implements Runnable {
        public final /* synthetic */ WheelPicker<V> b;

        public f(WheelPicker<V> wheelPicker) {
            this.b = wheelPicker;
        }

        @Override // java.lang.Runnable
        public final void run() {
            V vA;
            WheelPicker<V> wheelPicker = this.b;
            Scroller scroller = wheelPicker.i;
            if (wheelPicker.getWheelAdapter() == null) {
                return;
            }
            a<V> wheelAdapter = wheelPicker.getWheelAdapter();
            wheelAdapter.getClass();
            int iB = wheelAdapter.b();
            if (iB == 0) {
                return;
            }
            if (scroller.isFinished() && !wheelPicker.j0) {
                int i = wheelPicker.H;
                if (i == 0) {
                    return;
                }
                int i2 = (((-wheelPicker.T) / i) + wheelPicker.K) % iB;
                if (i2 < 0) {
                    i2 += iB;
                }
                wheelPicker.L = i2;
                a<V> aVar = wheelPicker.g;
                if (aVar != null && (vA = aVar.a(i2)) != null) {
                    wheelPicker.n(vA);
                }
            }
            if (scroller.computeScrollOffset()) {
                int currY = scroller.getCurrY();
                wheelPicker.T = currY;
                int i3 = (((-currY) / wheelPicker.H) + wheelPicker.K) % iB;
                a<V> wheelAdapter2 = wheelPicker.getWheelAdapter();
                wheelAdapter2.getClass();
                if (wheelAdapter2.a(i3) != null && wheelPicker.getLastScrollPosition() != i3) {
                    wheelPicker.getListener();
                    wheelPicker.setLastScrollPosition(i3);
                }
                wheelPicker.postInvalidate();
                wheelPicker.d.postDelayed(this, 16L);
            }
        }
    }

    public static final class g extends AnimatorListenerAdapter {
        public final /* synthetic */ WheelPicker<V> a;
        public final /* synthetic */ int b;

        public g(WheelPicker<V> wheelPicker, int i) {
            this.a = wheelPicker;
            this.b = i;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            V vA;
            animator.getClass();
            WheelPicker<V> wheelPicker = this.a;
            int i = this.b;
            wheelPicker.L = i;
            a<V> aVar = wheelPicker.g;
            if (aVar == null || (vA = aVar.a(i)) == null) {
                return;
            }
            wheelPicker.n(vA);
        }
    }

    public static final class h extends gh4 implements ll3<String> {
        public final /* synthetic */ WheelPicker<V> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(WheelPicker<V> wheelPicker) {
            super(0);
            this.f = wheelPicker;
        }

        @Override // defpackage.ll3
        public final String invoke() {
            return this.f.i(new Date());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WheelPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, zw6.b);
        typedArrayObtainStyledAttributes.getClass();
        this.b = typedArrayObtainStyledAttributes;
        this.c = new m92();
        this.d = new Handler();
        this.g = new a<>(0);
        Paint paint = new Paint(69);
        this.h = paint;
        this.i = new Scroller(context);
        this.k = new Rect();
        this.l = new Rect();
        this.m = new Rect();
        this.n = new Rect();
        this.o = new Camera();
        this.p = new Matrix();
        this.q = new Matrix();
        this.r = typedArrayObtainStyledAttributes.getString(13);
        this.s = typedArrayObtainStyledAttributes.getInt(18, 7);
        this.x = typedArrayObtainStyledAttributes.getColor(11, -7829368);
        this.y = typedArrayObtainStyledAttributes.getColor(17, -1);
        this.z = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, getResources().getDimensionPixelSize(R.dimen.WheelItemTextSize));
        this.A = getResources().getColor(R.color.picker_default_unselected_text_color);
        this.B = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, getResources().getDimensionPixelSize(R.dimen.WheelIndicatorSize));
        this.C = typedArrayObtainStyledAttributes.getColor(7, -1166541);
        this.D = typedArrayObtainStyledAttributes.getColor(2, -1996488705);
        this.E = typedArrayObtainStyledAttributes.getDimensionPixelSize(10, getResources().getDimensionPixelSize(R.dimen.WheelItemSpace));
        this.F = 90;
        this.G = typedArrayObtainStyledAttributes.getInt(9, 0);
        this.K = typedArrayObtainStyledAttributes.getInt(16, 0);
        this.O = 50;
        this.U = typedArrayObtainStyledAttributes.getInt(14, -1);
        this.a0 = 8;
        this.b0 = typedArrayObtainStyledAttributes.getBoolean(15, false);
        this.c0 = typedArrayObtainStyledAttributes.getBoolean(6, false);
        this.d0 = typedArrayObtainStyledAttributes.getBoolean(1, false);
        this.e0 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        this.f0 = typedArrayObtainStyledAttributes.getBoolean(4, false);
        this.g0 = typedArrayObtainStyledAttributes.getBoolean(3, false);
        this.k0 = new Locale("ru", "RU");
        this.l0 = new fh8(new h(this));
        this.m0 = Integer.MIN_VALUE;
        this.n0 = new fh8(new e(this));
        typedArrayObtainStyledAttributes.recycle();
        p();
        paint.setTextSize(this.z);
        this.e = k();
        a<V> aVar = this.g;
        aVar.getClass();
        List<V> listH = h(this.h0);
        ArrayList arrayList = aVar.a;
        if (arrayList != null) {
            arrayList.clear();
        }
        if (arrayList != null) {
            arrayList.addAll(listH == null ? kx2.b : listH);
        }
        a<V> aVar2 = this.g;
        aVar2.getClass();
        V v = this.e;
        ArrayList arrayList2 = aVar2.a;
        int iIndexOf = arrayList2 != null ? arrayList2.indexOf(v) : -1;
        this.L = iIndexOf;
        this.K = iIndexOf;
        this.o0 = new f(this);
    }

    private final int getDefaultItemPosition() {
        a<V> aVar = this.g;
        aVar.getClass();
        ArrayList arrayList = aVar.a;
        arrayList.getClass();
        return arrayList.indexOf(this.e);
    }

    private final String getLocalizedToday() {
        return (String) this.n0.getValue();
    }

    private final String getToday() {
        return (String) this.l0.getValue();
    }

    private final int getTodayItemPosition() {
        a<V> aVar = this.g;
        aVar.getClass();
        ArrayList arrayList = aVar.a;
        arrayList.getClass();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (arrayList.get(i) instanceof oc2) {
                Object obj = arrayList.get(i);
                obj.getClass();
                if (((oc2) obj).a.contentEquals(getLocalizedToday())) {
                    return i;
                }
            }
        }
        return 0;
    }

    private final void setAdapter(a<V> aVar) {
        this.g = aVar;
        int i = this.G;
        Paint paint = this.h;
        if (i == 1) {
            paint.setTextAlign(Paint.Align.LEFT);
        } else if (i != 2) {
            paint.setTextAlign(Paint.Align.CENTER);
        } else {
            paint.setTextAlign(Paint.Align.RIGHT);
        }
        f();
        m();
    }

    private final void setDefault(V v) {
        this.e = v;
        setSelectedItemPosition(getDefaultItemPosition());
    }

    private final void setSelectedItemPosition(int i) {
        double d2 = i;
        a<V> aVar = this.g;
        aVar.getClass();
        int iMax = (int) Math.max((int) Math.min(d2, aVar.b() - 1), 0.0d);
        this.K = iMax;
        this.L = iMax;
        this.T = 0;
        d();
        requestLayout();
        invalidate();
    }

    public final void a() {
        if (this.d0 || this.y != -1) {
            Rect rect = this.k;
            int i = rect.left;
            int i2 = this.Q;
            int i3 = this.I;
            this.n.set(i, i2 - i3, rect.right, i2 + i3);
        }
    }

    public final int b(int i) {
        if (Math.abs(i) <= this.I) {
            return -i;
        }
        int i2 = this.T;
        int i3 = this.H;
        return i2 < 0 ? (-i3) - i : i3 - i;
    }

    public final void c() {
        int i;
        int i2 = this.G;
        Rect rect = this.k;
        if (i2 != 1) {
            i = i2 != 2 ? this.P : rect.right;
        } else {
            i = rect.left;
        }
        this.R = i;
        float f2 = this.Q;
        Paint paint = this.h;
        this.S = (int) (f2 - ((paint.descent() + paint.ascent()) / 2.0f));
    }

    public final void d() {
        int iB;
        int i = this.K;
        int i2 = this.H;
        int i3 = i * i2;
        if (this.f0) {
            iB = Integer.MIN_VALUE;
        } else {
            a<V> aVar = this.g;
            aVar.getClass();
            iB = ((aVar.b() - 1) * (-i2)) + i3;
        }
        this.M = iB;
        if (this.f0) {
            i3 = Integer.MAX_VALUE;
        }
        this.N = i3;
    }

    public final void e() {
        if (this.c0) {
            int i = this.B / 2;
            int i2 = this.Q;
            int i3 = this.I;
            int i4 = i2 + i3;
            int i5 = i2 - i3;
            Rect rect = this.k;
            this.l.set(rect.left, i4 - i, rect.right, i4 + i);
            this.m.set(rect.left, i5 - i, rect.right, i5 + i);
        }
    }

    public final void f() {
        this.w = 0;
        this.v = 0;
        boolean z = this.b0;
        Paint paint = this.h;
        if (z) {
            a<V> aVar = this.g;
            aVar.getClass();
            this.v = (int) paint.measureText(aVar.c(0));
        } else if (l(this.U)) {
            a<V> aVar2 = this.g;
            aVar2.getClass();
            this.v = (int) paint.measureText(aVar2.c(this.U));
        } else if (TextUtils.isEmpty(this.r)) {
            a<V> aVar3 = this.g;
            aVar3.getClass();
            int iB = aVar3.b();
            for (int i = 0; i < iB; i++) {
                a<V> aVar4 = this.g;
                aVar4.getClass();
                this.v = (int) Math.max(this.v, (int) paint.measureText(aVar4.c(i)));
            }
        } else {
            this.v = (int) paint.measureText(this.r);
        }
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        this.w = (int) (fontMetrics.bottom - fontMetrics.top);
    }

    public int g(Date date) {
        int i;
        date.getClass();
        String strI = i(date);
        if (this instanceof WheelDayOfMonthPicker) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeZone(this.c.b());
            calendar.setTime(date);
            return calendar.get(5) - 1;
        }
        if ((this instanceof WheelDayPicker) && aa4.e(getToday(), strI)) {
            return getTodayItemPosition();
        }
        if (this instanceof WheelMonthPicker) {
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeZone(this.c.b());
            calendar2.setTime(date);
            return calendar2.get(2);
        }
        if (this instanceof WheelYearPicker) {
            WheelYearPicker wheelYearPicker = (WheelYearPicker) this;
            Calendar calendar3 = Calendar.getInstance();
            calendar3.setTimeZone(this.c.b());
            calendar3.setTime(date);
            return calendar3.get(1) - wheelYearPicker.getMinimumYear();
        }
        try {
            i = Integer.parseInt(strI);
            try {
                j59 j59Var = j59.a;
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            i = Integer.MIN_VALUE;
        }
        a<V> aVar = this.g;
        aVar.getClass();
        int iB = aVar.b();
        int i2 = 0;
        for (int i3 = 0; i3 < iB; i3++) {
            a<V> aVar2 = this.g;
            aVar2.getClass();
            String strC = aVar2.c(i3);
            if (i == Integer.MIN_VALUE) {
                if (aa4.e(strI, strC)) {
                    return i3;
                }
            } else if (Integer.parseInt(strC) <= i) {
                i2 = i3;
            }
        }
        return i2;
    }

    public final TypedArray getA() {
        return this.b;
    }

    public final int getCurrentItemPosition() {
        return this.L;
    }

    public final Locale getCurrentLocale() {
        return this.k0;
    }

    public final int getCurtainColor() {
        return this.D;
    }

    public final m92 getDateHelper() {
        return this.c;
    }

    public final V getDefaultValue() {
        return this.e;
    }

    public final int getIndicatorColor() {
        return this.C;
    }

    public final int getIndicatorSize() {
        return this.B;
    }

    public final int getItemAlign() {
        return this.G;
    }

    public int getItemSpace() {
        return this.E;
    }

    public final int getItemTextColor() {
        return this.x;
    }

    public final int getItemTextSize() {
        return this.z;
    }

    public int getLastScrollPosition() {
        return this.f;
    }

    public b<WheelPicker<V>, V> getListener() {
        return null;
    }

    public final String getMaximumWidthText() {
        return this.r;
    }

    public final int getMaximumWidthTextPosition() {
        return this.U;
    }

    public final int getSelectedItemPosition() {
        return this.K;
    }

    public final int getSelectedItemTextColor() {
        return this.y;
    }

    public final boolean getShowOnlyFutureDate() {
        return this.h0;
    }

    public final Typeface getTypeface() {
        Paint paint = this.h;
        if (paint != null) {
            return paint.getTypeface();
        }
        return null;
    }

    public final int getVisibleItemCount() {
        return this.s;
    }

    public final a<V> getWheelAdapter() {
        return this.g;
    }

    public abstract List<V> h(boolean z);

    public String i(Date date) {
        return date.toString();
    }

    public final String j(int i) {
        Context context = getContext();
        context.getClass();
        Locale locale = this.k0;
        locale.getClass();
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        configuration.setLocale(locale);
        String string = context.createConfigurationContext(configuration).getString(i);
        string.getClass();
        return string;
    }

    public abstract V k();

    public final boolean l(int i) {
        if (i < 0) {
            return false;
        }
        a<V> aVar = this.g;
        aVar.getClass();
        return i < aVar.b();
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0024  */
    public final void m() {
        int i = this.K;
        a<V> aVar = this.g;
        aVar.getClass();
        if (i <= aVar.b() - 1) {
            int i2 = this.L;
            a<V> aVar2 = this.g;
            aVar2.getClass();
            if (i2 > aVar2.b() - 1) {
                a<V> aVar3 = this.g;
                aVar3.getClass();
                int iB = aVar3.b() - 1;
                this.L = iB;
                this.K = iB;
            } else {
                this.K = this.L;
            }
        } else {
            a<V> aVar4 = this.g;
            aVar4.getClass();
            int iB2 = aVar4.b() - 1;
            this.L = iB2;
            this.K = iB2;
        }
        this.T = 0;
        f();
        d();
        requestLayout();
        postInvalidate();
    }

    public void n(Object obj) {
        getListener();
    }

    public final void o(int i) {
        int i2 = this.L;
        if (i != i2) {
            int i3 = this.T;
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i3, ((i2 - i) * this.H) + i3);
            valueAnimatorOfInt.setDuration(300L);
            valueAnimatorOfInt.addUpdateListener(new js6(this, 1));
            valueAnimatorOfInt.addListener(new g(this, i));
            valueAnimatorOfInt.start();
        }
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        setAdapter(this.g);
        setDefault(this.e);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Rect rect;
        Paint paint;
        String strC;
        int i;
        float f2;
        int i2;
        int i3;
        canvas.getClass();
        int i4 = this.H;
        int i5 = this.u;
        if (i4 - i5 <= 0) {
            return;
        }
        int i6 = ((-this.T) / i4) - i5;
        int i7 = this.K + i6;
        int i8 = -i5;
        while (true) {
            int i9 = this.K + i6 + this.t;
            rect = this.n;
            paint = this.h;
            if (i7 >= i9) {
                break;
            }
            if (this.f0) {
                a<V> aVar = this.g;
                aVar.getClass();
                int iB = aVar.b();
                int i10 = i7 % iB;
                if (i10 < 0) {
                    i10 += iB;
                }
                a<V> aVar2 = this.g;
                aVar2.getClass();
                strC = aVar2.c(i10);
            } else if (l(i7)) {
                a<V> aVar3 = this.g;
                aVar3.getClass();
                strC = aVar3.c(i7);
            } else {
                strC = "";
            }
            paint.setColor(this.x);
            paint.setStyle(Paint.Style.FILL);
            int i11 = this.S;
            int i12 = this.H;
            int i13 = (this.T % i12) + (i8 * i12) + i11;
            boolean z = this.g0;
            Rect rect2 = this.k;
            Matrix matrix = this.p;
            if (z) {
                double dAbs = ((double) i11) - Math.abs(i11 - i13);
                int i14 = rect2.top;
                int i15 = this.S;
                float f3 = (float) (((dAbs - ((double) i14)) * 1.0d) / ((double) (i15 - i14)));
                if (i13 > i15) {
                    i2 = 1;
                } else {
                    i2 = i13 < i15 ? -1 : 0;
                }
                float f4 = this.F;
                float f5 = (-(1.0f - f3)) * f4 * i2;
                float f6 = -f4;
                if (f5 < f6) {
                    f4 = f6;
                } else if (f5 <= f4) {
                    f4 = f5;
                }
                float fSin = (((float) Math.sin(Math.toRadians(f4))) / ((float) Math.sin(Math.toRadians(this.F)))) * this.J;
                float f7 = this.P;
                int i16 = this.G;
                if (i16 != 1) {
                    if (i16 == 2) {
                        i3 = rect2.right;
                    }
                    float f8 = this.Q - fSin;
                    Camera camera = this.o;
                    camera.save();
                    camera.rotateX(f4);
                    camera.getMatrix(matrix);
                    camera.restore();
                    float f9 = -f7;
                    float f10 = -f8;
                    matrix.preTranslate(f9, f10);
                    matrix.postTranslate(f7, f8);
                    camera.save();
                    f2 = fSin;
                    i = i13;
                    camera.translate(0.0f, 0.0f, (float) (((double) this.J) - (((double) this.J) * Math.cos(Math.toRadians((int) f4)))));
                    Matrix matrix2 = this.q;
                    camera.getMatrix(matrix2);
                    camera.restore();
                    matrix2.preTranslate(f9, f10);
                    matrix2.postTranslate(f7, f8);
                    matrix.postConcat(matrix2);
                } else {
                    i3 = rect2.left;
                }
                f7 = i3;
                float f11 = this.Q - fSin;
                Camera camera2 = this.o;
                camera2.save();
                camera2.rotateX(f4);
                camera2.getMatrix(matrix);
                camera2.restore();
                float f12 = -f7;
                float f13 = -f11;
                matrix.preTranslate(f12, f13);
                matrix.postTranslate(f7, f11);
                camera2.save();
                f2 = fSin;
                i = i13;
                camera2.translate(0.0f, 0.0f, (float) (((double) this.J) - (((double) this.J) * Math.cos(Math.toRadians((int) f4)))));
                Matrix matrix3 = this.q;
                camera2.getMatrix(matrix3);
                camera2.restore();
                matrix3.preTranslate(f12, f13);
                matrix3.postTranslate(f7, f11);
                matrix.postConcat(matrix3);
            } else {
                i = i13;
                f2 = 0.0f;
            }
            if (this.e0) {
                int i17 = this.S;
                int iAbs = (int) ((((((double) i17) - Math.abs(i17 - i)) * 1.0d) / ((double) this.S)) * 255.0d);
                paint.setAlpha(iAbs < 0 ? 0 : iAbs);
            }
            float f14 = this.g0 ? this.S - f2 : i;
            if (this.m0 != Integer.MIN_VALUE) {
                a<V> aVar4 = this.g;
                aVar4.getClass();
                int iB2 = aVar4.b();
                int i18 = i7 % iB2;
                if (i18 < 0) {
                    i18 += iB2;
                }
                paint.setColor(i18 > this.m0 ? this.A : this.x);
            }
            if (this.y != -1) {
                canvas.save();
                if (this.g0) {
                    canvas.concat(matrix);
                }
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                canvas.drawText(strC, this.R, f14, paint);
                canvas.restore();
                paint.setColor(this.y);
                canvas.save();
                if (this.g0) {
                    canvas.concat(matrix);
                }
                canvas.clipRect(rect);
                canvas.drawText(strC, this.R, f14, paint);
                canvas.restore();
            } else {
                canvas.save();
                canvas.clipRect(rect2);
                if (this.g0) {
                    canvas.concat(matrix);
                }
                canvas.drawText(strC, this.R, f14, paint);
                canvas.restore();
            }
            i7++;
            i8++;
            i6 = i6;
        }
        if (this.d0) {
            paint.setColor(this.D);
            paint.setStyle(Paint.Style.FILL);
            canvas.drawRect(rect, paint);
        }
        if (this.c0) {
            paint.setColor(this.C);
            paint.setStyle(Paint.Style.FILL);
            canvas.drawRect(this.l, paint);
            canvas.drawRect(this.m, paint);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int i3 = this.v;
        int i4 = this.w;
        int i5 = this.s;
        int iSin = ((i5 - 1) * this.E) + (i4 * i5);
        if (this.g0) {
            iSin = (int) ((((double) (((float) Math.sin(Math.toRadians(this.F))) * 2.0f)) / ((((double) this.F) * 3.141592653589793d) / 90.0d)) * ((double) iSin));
        }
        int paddingRight = getPaddingRight() + getPaddingLeft() + i3;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + iSin;
        if (mode != 1073741824) {
            size = mode == Integer.MIN_VALUE ? (int) Math.min(paddingRight, size) : paddingRight;
        }
        if (mode2 != 1073741824) {
            size2 = mode2 == Integer.MIN_VALUE ? (int) Math.min(paddingBottom, size2) : paddingBottom;
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        Rect rect = this.k;
        rect.set(paddingLeft, paddingTop, width, height);
        this.P = rect.centerX();
        this.Q = rect.centerY();
        c();
        this.J = rect.height() / 2;
        int iHeight = rect.height() / this.s;
        this.H = iHeight;
        this.I = iHeight / 2;
        d();
        e();
        a();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        motionEvent.getClass();
        if (isEnabled()) {
            int action = motionEvent.getAction();
            Scroller scroller = this.i;
            if (action == 0) {
                if (getParent() != null) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                VelocityTracker velocityTracker = this.j;
                if (velocityTracker == null) {
                    this.j = VelocityTracker.obtain();
                } else {
                    velocityTracker.clear();
                }
                VelocityTracker velocityTracker2 = this.j;
                velocityTracker2.getClass();
                velocityTracker2.addMovement(motionEvent);
                if (!scroller.isFinished()) {
                    scroller.abortAnimation();
                    this.j0 = true;
                }
                int y = (int) motionEvent.getY();
                this.V = y;
                this.W = y;
            } else {
                if (action == 1) {
                    if (getParent() != null) {
                        getParent().requestDisallowInterceptTouchEvent(false);
                    }
                    if (!this.i0) {
                        VelocityTracker velocityTracker3 = this.j;
                        velocityTracker3.getClass();
                        velocityTracker3.addMovement(motionEvent);
                        VelocityTracker velocityTracker4 = this.j;
                        velocityTracker4.getClass();
                        velocityTracker4.computeCurrentVelocity(1000);
                        this.j0 = false;
                        VelocityTracker velocityTracker5 = this.j;
                        velocityTracker5.getClass();
                        int yVelocity = (int) velocityTracker5.getYVelocity();
                        double dAbs = Math.abs(yVelocity);
                        double d2 = this.O;
                        int i = this.T;
                        if (dAbs > d2) {
                            scroller.fling(0, i, 0, yVelocity, 0, 0, this.M, this.N);
                            scroller.setFinalY(b(scroller.getFinalY() % this.H) + scroller.getFinalY());
                        } else {
                            scroller.startScroll(0, i, 0, b(i % this.H));
                        }
                        if (!this.f0) {
                            int finalY = scroller.getFinalY();
                            int i2 = this.N;
                            if (finalY > i2) {
                                scroller.setFinalY(i2);
                            } else {
                                int finalY2 = scroller.getFinalY();
                                int i3 = this.M;
                                if (finalY2 < i3) {
                                    scroller.setFinalY(i3);
                                }
                            }
                        }
                        this.d.post(this.o0);
                        VelocityTracker velocityTracker6 = this.j;
                        if (velocityTracker6 != null) {
                            velocityTracker6.recycle();
                            this.j = null;
                            return true;
                        }
                    }
                    return false;
                }
                if (action == 2) {
                    if (Math.abs(this.W - motionEvent.getY()) < this.a0 && b(scroller.getFinalY() % this.H) > 0) {
                        this.i0 = true;
                        return false;
                    }
                    this.i0 = false;
                    VelocityTracker velocityTracker7 = this.j;
                    velocityTracker7.getClass();
                    velocityTracker7.addMovement(motionEvent);
                    float y2 = motionEvent.getY() - this.V;
                    if (Math.abs(y2) >= 1.0d) {
                        this.T = (int) (this.T + y2);
                        this.V = (int) motionEvent.getY();
                        invalidate();
                        return true;
                    }
                    return false;
                }
                if (action == 3) {
                    if (getParent() != null) {
                        getParent().requestDisallowInterceptTouchEvent(false);
                    }
                    VelocityTracker velocityTracker8 = this.j;
                    if (velocityTracker8 != null) {
                        velocityTracker8.recycle();
                        this.j = null;
                        return true;
                    }
                }
            }
        }
        return true;
    }

    public final void p() {
        int i = this.s;
        if (i < 2) {
            throw new ArithmeticException("Wheel's visible item count can not be less than 2!");
        }
        if (i % 2 == 0) {
            i++;
            this.s = i;
        }
        int i2 = i + 2;
        this.t = i2;
        this.u = i2 / 2;
    }

    public final void setAtmospheric(boolean z) {
        this.e0 = z;
        postInvalidate();
    }

    public final void setCurtain(boolean z) {
        this.d0 = z;
        a();
        postInvalidate();
    }

    public final void setCurtainColor(int i) {
        this.D = i;
        postInvalidate();
    }

    public final void setCurved(boolean z) {
        this.g0 = z;
        requestLayout();
        postInvalidate();
    }

    public final void setCurvedMaxAngle(int i) {
        this.F = i;
        requestLayout();
        postInvalidate();
    }

    public void setCyclic(boolean z) {
        this.f0 = z;
        d();
        invalidate();
    }

    public final void setDateHelper(m92 m92Var) {
        m92Var.getClass();
        this.c = m92Var;
    }

    public final void setDefaultDate(Date date) {
        V vA;
        int iG;
        date.getClass();
        a<V> aVar = this.g;
        if (aVar != null) {
            if (aVar.b() > 0 && (iG = g(date)) >= 0) {
                List list = aVar.a;
                if (list == null) {
                    list = kx2.b;
                }
                this.e = (V) list.get(iG);
                setSelectedItemPosition(iG);
            }
            int i = this.L;
            a<V> aVar2 = this.g;
            if (aVar2 == null || (vA = aVar2.a(i)) == null) {
                return;
            }
            n(vA);
        }
    }

    public final void setDefaultValue(V v) {
        this.e = v;
    }

    public final void setIndicator(boolean z) {
        this.c0 = z;
        e();
        postInvalidate();
    }

    public final void setIndicatorColor(int i) {
        this.C = i;
        postInvalidate();
    }

    public final void setIndicatorSize(int i) {
        this.B = i;
        e();
        postInvalidate();
    }

    public final void setItemAlign(int i) {
        this.G = i;
        Paint paint = this.h;
        if (i == 1) {
            paint.setTextAlign(Paint.Align.LEFT);
        } else if (i != 2) {
            paint.setTextAlign(Paint.Align.CENTER);
        } else {
            paint.setTextAlign(Paint.Align.RIGHT);
        }
        c();
        postInvalidate();
    }

    public void setItemSpace(int i) {
        this.E = i;
        requestLayout();
        postInvalidate();
    }

    public final void setItemTextColor(int i) {
        this.x = i;
        postInvalidate();
    }

    public final void setItemTextSize(int i) {
        if (this.z != i) {
            this.z = i;
            Paint paint = this.h;
            paint.getClass();
            paint.setTextSize(this.z);
            f();
            requestLayout();
            postInvalidate();
        }
    }

    public void setLastScrollPosition(int i) {
        this.f = i;
    }

    public void setListener(b<WheelPicker<V>, V> bVar) {
    }

    public final void setMaxAvailableItemPosition(int i) {
        this.m0 = i;
        invalidate();
    }

    public final void setMaximumWidthText(String str) {
        if (str == null) {
            o2.d("Maximum width text can not be null!");
            return;
        }
        this.r = str;
        f();
        requestLayout();
        postInvalidate();
    }

    public final void setMaximumWidthTextPosition(int i) {
        if (!l(i)) {
            a<V> aVar = this.g;
            aVar.getClass();
            throw new ArrayIndexOutOfBoundsException(rz0.c(aVar.b(), i, "Maximum width text Position must in [0, ", "), but current is "));
        }
        this.U = i;
        f();
        requestLayout();
        postInvalidate();
    }

    public final void setOnItemSelectedListener(c cVar) {
    }

    public final void setOnWheelChangeListener(d dVar) {
    }

    public final void setSameWidth(boolean z) {
        this.b0 = z;
        f();
        requestLayout();
        invalidate();
    }

    public final void setSelectedItemTextColor(int i) {
        this.y = i;
        a();
        postInvalidate();
    }

    public final void setShowOnlyFutureDate(boolean z) {
        this.h0 = z;
    }

    public final void setTypeface(Typeface typeface) {
        Paint paint = this.h;
        if (paint != null) {
            paint.setTypeface(typeface);
        }
        f();
        requestLayout();
        postInvalidate();
    }

    public final void setVisibleItemCount(int i) {
        this.s = i;
        p();
        requestLayout();
    }

    public final void setWheelAdapter(a<V> aVar) {
        this.g = aVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WheelPicker(Context context) {
        this(context, null);
        context.getClass();
    }
}
