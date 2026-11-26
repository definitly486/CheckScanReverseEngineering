package yads;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateDecelerateInterpolator;
import defpackage.j59;
import java.util.ArrayList;
import java.util.Iterator;
import yads.kn5;

/* JADX INFO: loaded from: classes6.dex */
public class kn5 extends View {
    public static final /* synthetic */ int H = 0;
    public final fn5 A;
    public jn5 B;
    public boolean C;
    public float D;
    public float E;
    public float F;
    public Integer G;
    public final an5 a;
    public final gp4 b;
    public ValueAnimator c;
    public float d;
    public ValueAnimator e;
    public Float f;
    public final en5 g;
    public final en5 h;
    public final ArrayList i;
    public long j;
    public final AccelerateDecelerateInterpolator k;
    public boolean l;
    public float m;
    public float n;
    public Drawable o;
    public Drawable p;
    public Drawable q;
    public Drawable r;
    public float s;
    public Drawable t;
    public cw5 u;
    public Float v;
    public final rm5 w;
    public Drawable x;
    public cw5 y;
    public int z;

    public kn5(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new an5();
        this.b = new gp4();
        this.g = new en5(new defpackage.sl2(this, 3));
        this.h = new en5(new defpackage.tl2(this, 2));
        this.i = new ArrayList();
        this.j = 300L;
        this.k = new AccelerateDecelerateInterpolator();
        this.l = true;
        this.n = 100.0f;
        this.s = this.m;
        this.w = new rm5(this);
        this.z = -1;
        this.A = new fn5(this);
        this.B = jn5.THUMB;
        this.C = true;
        this.D = (float) Math.tan(45.0d);
    }

    public static final j59 b(kn5 kn5Var, boolean z) {
        kn5Var.e = null;
        if (!z) {
            Float f = kn5Var.f;
            Float f2 = kn5Var.v;
            if (!defpackage.aa4.d(f, f2)) {
                Iterator it = kn5Var.b.iterator();
                while (true) {
                    fp4 fp4Var = (fp4) it;
                    if (!fp4Var.hasNext()) {
                        break;
                    }
                    ((gn5) fp4Var.next()).a(f2);
                }
            }
        }
        return j59.a;
    }

    public static /* synthetic */ void setThumbSecondaryValue$default(kn5 kn5Var, Float f, boolean z, int i, Object obj) {
        if (obj != null) {
            defpackage.n1.e("Super calls with default arguments not supported in this target, function: setThumbSecondaryValue");
            return;
        }
        if ((i & 2) != 0) {
            z = kn5Var.l;
        }
        kn5Var.setThumbSecondaryValue(f, z);
    }

    public static /* synthetic */ void setThumbValue$default(kn5 kn5Var, float f, boolean z, int i, Object obj) {
        if (obj != null) {
            defpackage.n1.e("Super calls with default arguments not supported in this target, function: setThumbValue");
            return;
        }
        if ((i & 2) != 0) {
            z = kn5Var.l;
        }
        kn5Var.setThumbValue(f, z);
    }

    public final void a(Float f, boolean z, boolean z2) {
        ValueAnimator valueAnimator;
        Float f2;
        Float fValueOf = f != null ? Float.valueOf(Math.min(Math.max(f.floatValue(), this.m), this.n)) : null;
        if (defpackage.aa4.d(this.v, fValueOf)) {
            return;
        }
        if (!z || !this.l || (f2 = this.v) == null || fValueOf == null) {
            if (z2 && (valueAnimator = this.e) != null) {
                valueAnimator.cancel();
            }
            if (z2 || this.e == null) {
                Float f3 = this.v;
                this.f = f3;
                this.v = fValueOf;
                if (!defpackage.aa4.d(f3, fValueOf)) {
                    Iterator it = this.b.iterator();
                    while (true) {
                        fp4 fp4Var = (fp4) it;
                        if (!fp4Var.hasNext()) {
                            break;
                        } else {
                            ((gn5) fp4Var.next()).a(fValueOf);
                        }
                    }
                }
            }
        } else {
            ValueAnimator valueAnimator2 = this.e;
            if (valueAnimator2 == null) {
                this.f = f2;
            }
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
            }
            Float f4 = this.v;
            f4.getClass();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f4.floatValue(), fValueOf.floatValue());
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: a1a
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    kn5.a(this.a, valueAnimator3);
                }
            });
            valueAnimatorOfFloat.addListener(this.h);
            valueAnimatorOfFloat.setDuration(this.j);
            valueAnimatorOfFloat.setInterpolator(this.k);
            valueAnimatorOfFloat.start();
            this.e = valueAnimatorOfFloat;
        }
        invalidate();
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.w.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.w.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public final int getSuggestedMinimumHeight() {
        Integer num;
        int iMax = Math.max(hn5.a(this.q), hn5.a(this.r));
        Iterator it = this.i.iterator();
        if (it.hasNext()) {
            in5 in5Var = (in5) it.next();
            Integer numValueOf = Integer.valueOf(Math.max(hn5.a(in5Var.e), hn5.a(in5Var.f)));
            while (it.hasNext()) {
                in5 in5Var2 = (in5) it.next();
                Integer numValueOf2 = Integer.valueOf(Math.max(hn5.a(in5Var2.e), hn5.a(in5Var2.f)));
                if (numValueOf.compareTo(numValueOf2) < 0) {
                    numValueOf = numValueOf2;
                }
            }
            num = numValueOf;
        } else {
            num = null;
        }
        return Math.max(Math.max(hn5.a(this.t), hn5.a(this.x)), Math.max(iMax, num != null ? num.intValue() : 0));
    }

    @Override // android.view.View
    public final int getSuggestedMinimumWidth() {
        int iMax = Math.max(Math.max(hn5.b(this.t), hn5.b(this.x)), Math.max(hn5.b(this.q), hn5.b(this.r)) * ((int) ((this.n - this.m) + 1.0f)));
        cw5 cw5Var = this.u;
        int intrinsicWidth = cw5Var != null ? cw5Var.getIntrinsicWidth() : 0;
        cw5 cw5Var2 = this.y;
        return Math.max(iMax, Math.max(intrinsicWidth, cw5Var2 != null ? cw5Var2.getIntrinsicWidth() : 0));
    }

    public final int h() {
        int i = this.z;
        if (i != -1) {
            return i;
        }
        int iMax = Math.max(Math.max(hn5.b(this.o), hn5.b(this.p)), Math.max(hn5.b(this.t), hn5.b(this.x)));
        this.z = iMax;
        return iMax;
    }

    public final boolean j() {
        return this.v != null;
    }

    public final void k() {
        a(Math.min(Math.max(this.s, this.m), this.n), false, true);
        if (j()) {
            Float f = this.v;
            a(f != null ? Float.valueOf(Math.min(Math.max(f.floatValue(), this.m), this.n)) : null, false, true);
        }
    }

    /* JADX WARN: Code duplicated, block: B:107:0x01f3 A[EDGE_INSN: B:107:0x01f3->B:79:0x01f3 BREAK  A[LOOP:2: B:68:0x01ad->B:78:0x01f0], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:22:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:24:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:25:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:28:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:29:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:31:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:32:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:34:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:35:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:39:0x0103  */
    /* JADX WARN: Code duplicated, block: B:41:0x010d  */
    /* JADX WARN: Code duplicated, block: B:68:0x01ad A[LOOP:2: B:68:0x01ad->B:78:0x01f0, LOOP_START, PHI: r0
      0x01ad: PHI (r0v11 int) = (r0v7 int), (r0v12 int) binds: [B:67:0x01ab, B:78:0x01f0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:70:0x01b1 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:72:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:76:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:78:0x01f0 A[LOOP:2: B:68:0x01ad->B:78:0x01f0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:81:0x0211  */
    /* JADX WARN: Code duplicated, block: B:86:0x0198 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f;
        float fMin;
        boolean zJ;
        kn5 kn5Var;
        float f2;
        Float f3;
        float f4;
        float fMax;
        int iA;
        int iA2;
        an5 an5Var;
        Drawable drawable;
        int i;
        int i2;
        int i3;
        int i4;
        Drawable drawable2;
        an5 an5Var2;
        int iA3;
        int i5;
        int i6;
        super.onDraw(canvas);
        canvas.save();
        canvas.translate(getPaddingLeft() + (h() / 2), getPaddingTop());
        int iSave = canvas.save();
        for (in5 in5Var : this.i) {
            canvas.clipRect(in5Var.g - in5Var.c, 0.0f, in5Var.h + in5Var.d, getHeight(), Region.Op.DIFFERENCE);
        }
        an5 an5Var3 = this.a;
        Drawable drawable3 = this.r;
        if (drawable3 == null) {
            an5Var3.getClass();
        } else {
            drawable3.setBounds(0, (an5Var3.b / 2) - (drawable3.getIntrinsicHeight() / 2), an5Var3.a, (drawable3.getIntrinsicHeight() / 2) + (an5Var3.b / 2));
            drawable3.draw(canvas);
        }
        fn5 fn5Var = this.A;
        boolean zJ2 = fn5Var.a.j();
        kn5 kn5Var2 = fn5Var.a;
        if (zJ2) {
            float f5 = kn5Var2.s;
            Float f6 = kn5Var2.v;
            if (f6 != null) {
                fMin = Math.min(f5, f6.floatValue());
            } else {
                f = f5;
            }
            fn5 fn5Var2 = this.A;
            zJ = fn5Var2.a.j();
            kn5Var = fn5Var2.a;
            if (!zJ) {
                f2 = kn5Var.s;
                f3 = kn5Var.v;
                if (f3 != null) {
                    fMax = Math.max(f2, f3.floatValue());
                } else {
                    f4 = f2;
                }
                iA = a(getWidth(), f);
                iA2 = a(getWidth(), f4);
                an5Var = this.a;
                drawable = this.q;
                if (iA > iA2) {
                    i = iA2;
                } else {
                    i = iA;
                }
                if (iA2 < iA) {
                    i2 = iA;
                } else {
                    i2 = iA2;
                }
                if (drawable == null) {
                    an5Var.getClass();
                } else {
                    drawable.setBounds(i, (an5Var.b / 2) - (drawable.getIntrinsicHeight() / 2), i2, (drawable.getIntrinsicHeight() / 2) + (an5Var.b / 2));
                    drawable.draw(canvas);
                }
                canvas.restoreToCount(iSave);
                for (in5 in5Var2 : this.i) {
                    i5 = in5Var2.h;
                    if (i5 >= iA || (i6 = in5Var2.g) > iA2) {
                        a(in5Var2, this, canvas, in5Var2.f, 0, 0, 48);
                    } else if (i6 >= iA && i5 <= iA2) {
                        a(in5Var2, this, canvas, in5Var2.e, 0, 0, 48);
                    } else if (i6 < iA && i5 <= iA2) {
                        int i7 = iA - 1;
                        a(in5Var2, this, canvas, in5Var2.f, 0, i7 < i6 ? i6 : i7, 16);
                        a(in5Var2, this, canvas, in5Var2.e, iA, 0, 32);
                    } else if (i6 < iA || i5 <= iA2) {
                        a(in5Var2, this, canvas, in5Var2.f, 0, 0, 48);
                        Drawable drawable4 = in5Var2.e;
                        an5 an5Var4 = this.a;
                        if (drawable4 == null) {
                            an5Var4.getClass();
                        } else {
                            drawable4.setBounds(iA, (an5Var4.b / 2) - (drawable4.getIntrinsicHeight() / 2), iA2, (drawable4.getIntrinsicHeight() / 2) + (an5Var4.b / 2));
                            drawable4.draw(canvas);
                        }
                    } else {
                        a(in5Var2, this, canvas, in5Var2.e, 0, iA2, 16);
                        Drawable drawable5 = in5Var2.f;
                        int i8 = iA2 + 1;
                        int i9 = in5Var2.h;
                        a(in5Var2, this, canvas, drawable5, i8 > i9 ? i9 : i8, 0, 32);
                    }
                }
                i3 = (int) this.m;
                i4 = (int) this.n;
                if (i3 <= i4) {
                    while (true) {
                        int i10 = (int) f;
                        if (i3 <= ((int) f4) || i10 > i3) {
                            drawable2 = this.p;
                        } else {
                            drawable2 = this.o;
                        }
                        an5Var2 = this.a;
                        iA3 = a(getWidth(), i3);
                        an5Var2.getClass();
                        if (drawable2 != null) {
                            int intrinsicWidth = drawable2.getIntrinsicWidth() / 2;
                            drawable2.setBounds(iA3 - intrinsicWidth, (an5Var2.b / 2) - (drawable2.getIntrinsicHeight() / 2), iA3 + intrinsicWidth, (drawable2.getIntrinsicHeight() / 2) + (an5Var2.b / 2));
                            drawable2.draw(canvas);
                        }
                        if (i3 != i4) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                }
                this.a.a(canvas, a(getWidth(), this.s), this.t, (int) this.s, this.u);
                if (j()) {
                    an5 an5Var5 = this.a;
                    Float f7 = this.v;
                    f7.getClass();
                    int iA4 = a(getWidth(), f7.floatValue());
                    Drawable drawable6 = this.x;
                    Float f8 = this.v;
                    f8.getClass();
                    an5Var5.a(canvas, iA4, drawable6, (int) f8.floatValue(), this.y);
                }
                canvas.restore();
            }
            fMax = kn5Var.s;
            f4 = fMax;
            iA = a(getWidth(), f);
            iA2 = a(getWidth(), f4);
            an5Var = this.a;
            drawable = this.q;
            if (iA > iA2) {
                i = iA2;
            } else {
                i = iA;
            }
            if (iA2 < iA) {
                i2 = iA;
            } else {
                i2 = iA2;
            }
            if (drawable == null) {
                an5Var.getClass();
            } else {
                drawable.setBounds(i, (an5Var.b / 2) - (drawable.getIntrinsicHeight() / 2), i2, (drawable.getIntrinsicHeight() / 2) + (an5Var.b / 2));
                drawable.draw(canvas);
            }
            canvas.restoreToCount(iSave);
            while (r11.hasNext()) {
                i5 = in5Var2.h;
                if (i5 >= iA) {
                }
                a(in5Var2, this, canvas, in5Var2.f, 0, 0, 48);
            }
            i3 = (int) this.m;
            i4 = (int) this.n;
            if (i3 <= i4) {
                while (true) {
                    int i11 = (int) f;
                    if (i3 <= ((int) f4)) {
                        drawable2 = this.p;
                    } else {
                        drawable2 = this.p;
                    }
                    an5Var2 = this.a;
                    iA3 = a(getWidth(), i3);
                    an5Var2.getClass();
                    if (drawable2 != null) {
                        int intrinsicWidth2 = drawable2.getIntrinsicWidth() / 2;
                        drawable2.setBounds(iA3 - intrinsicWidth2, (an5Var2.b / 2) - (drawable2.getIntrinsicHeight() / 2), iA3 + intrinsicWidth2, (drawable2.getIntrinsicHeight() / 2) + (an5Var2.b / 2));
                        drawable2.draw(canvas);
                    }
                    if (i3 != i4) {
                        break;
                        break;
                    }
                    i3++;
                }
            }
            this.a.a(canvas, a(getWidth(), this.s), this.t, (int) this.s, this.u);
            if (j()) {
                an5 an5Var6 = this.a;
                Float f9 = this.v;
                f9.getClass();
                int iA5 = a(getWidth(), f9.floatValue());
                Drawable drawable7 = this.x;
                Float f10 = this.v;
                f10.getClass();
                an5Var6.a(canvas, iA5, drawable7, (int) f10.floatValue(), this.y);
            }
            canvas.restore();
        }
        fMin = kn5Var2.m;
        f = fMin;
        fn5 fn5Var3 = this.A;
        zJ = fn5Var3.a.j();
        kn5Var = fn5Var3.a;
        if (!zJ) {
            f2 = kn5Var.s;
            f3 = kn5Var.v;
            if (f3 != null) {
                fMax = Math.max(f2, f3.floatValue());
            } else {
                f4 = f2;
            }
            iA = a(getWidth(), f);
            iA2 = a(getWidth(), f4);
            an5Var = this.a;
            drawable = this.q;
            if (iA > iA2) {
                i = iA2;
            } else {
                i = iA;
            }
            if (iA2 < iA) {
                i2 = iA;
            } else {
                i2 = iA2;
            }
            if (drawable == null) {
                an5Var.getClass();
            } else {
                drawable.setBounds(i, (an5Var.b / 2) - (drawable.getIntrinsicHeight() / 2), i2, (drawable.getIntrinsicHeight() / 2) + (an5Var.b / 2));
                drawable.draw(canvas);
            }
            canvas.restoreToCount(iSave);
            while (r11.hasNext()) {
                i5 = in5Var2.h;
                if (i5 >= iA) {
                }
                a(in5Var2, this, canvas, in5Var2.f, 0, 0, 48);
            }
            i3 = (int) this.m;
            i4 = (int) this.n;
            if (i3 <= i4) {
                while (true) {
                    int i12 = (int) f;
                    if (i3 <= ((int) f4)) {
                        drawable2 = this.p;
                    } else {
                        drawable2 = this.p;
                    }
                    an5Var2 = this.a;
                    iA3 = a(getWidth(), i3);
                    an5Var2.getClass();
                    if (drawable2 != null) {
                        int intrinsicWidth3 = drawable2.getIntrinsicWidth() / 2;
                        drawable2.setBounds(iA3 - intrinsicWidth3, (an5Var2.b / 2) - (drawable2.getIntrinsicHeight() / 2), iA3 + intrinsicWidth3, (drawable2.getIntrinsicHeight() / 2) + (an5Var2.b / 2));
                        drawable2.draw(canvas);
                    }
                    if (i3 != i4) {
                        break;
                        break;
                    }
                    i3++;
                }
            }
            this.a.a(canvas, a(getWidth(), this.s), this.t, (int) this.s, this.u);
            if (j()) {
                an5 an5Var7 = this.a;
                Float f11 = this.v;
                f11.getClass();
                int iA6 = a(getWidth(), f11.floatValue());
                Drawable drawable8 = this.x;
                Float f12 = this.v;
                f12.getClass();
                an5Var7.a(canvas, iA6, drawable8, (int) f12.floatValue(), this.y);
            }
            canvas.restore();
        }
        fMax = kn5Var.s;
        f4 = fMax;
        iA = a(getWidth(), f);
        iA2 = a(getWidth(), f4);
        an5Var = this.a;
        drawable = this.q;
        if (iA > iA2) {
            i = iA2;
        } else {
            i = iA;
        }
        if (iA2 < iA) {
            i2 = iA;
        } else {
            i2 = iA2;
        }
        if (drawable == null) {
            an5Var.getClass();
        } else {
            drawable.setBounds(i, (an5Var.b / 2) - (drawable.getIntrinsicHeight() / 2), i2, (drawable.getIntrinsicHeight() / 2) + (an5Var.b / 2));
            drawable.draw(canvas);
        }
        canvas.restoreToCount(iSave);
        while (r11.hasNext()) {
            i5 = in5Var2.h;
            if (i5 >= iA) {
            }
            a(in5Var2, this, canvas, in5Var2.f, 0, 0, 48);
        }
        i3 = (int) this.m;
        i4 = (int) this.n;
        if (i3 <= i4) {
            while (true) {
                int i13 = (int) f;
                if (i3 <= ((int) f4)) {
                    drawable2 = this.p;
                } else {
                    drawable2 = this.p;
                }
                an5Var2 = this.a;
                iA3 = a(getWidth(), i3);
                an5Var2.getClass();
                if (drawable2 != null) {
                    int intrinsicWidth4 = drawable2.getIntrinsicWidth() / 2;
                    drawable2.setBounds(iA3 - intrinsicWidth4, (an5Var2.b / 2) - (drawable2.getIntrinsicHeight() / 2), iA3 + intrinsicWidth4, (drawable2.getIntrinsicHeight() / 2) + (an5Var2.b / 2));
                    drawable2.draw(canvas);
                }
                if (i3 != i4) {
                    break;
                    break;
                }
                i3++;
            }
        }
        this.a.a(canvas, a(getWidth(), this.s), this.t, (int) this.s, this.u);
        if (j()) {
            an5 an5Var8 = this.a;
            Float f13 = this.v;
            f13.getClass();
            int iA7 = a(getWidth(), f13.floatValue());
            Drawable drawable9 = this.x;
            Float f14 = this.v;
            f14.getClass();
            an5Var8.a(canvas, iA7, drawable9, (int) f14.floatValue(), this.y);
        }
        canvas.restore();
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        this.w.onFocusChanged(z, i, rect);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int paddingRight = getPaddingRight() + getPaddingLeft() + getSuggestedMinimumWidth();
        int paddingBottom = getPaddingBottom() + getPaddingTop() + getSuggestedMinimumHeight();
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            paddingRight = Math.min(paddingRight, size);
        } else if (mode == 1073741824) {
            paddingRight = size;
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode2 == Integer.MIN_VALUE) {
            paddingBottom = Math.min(paddingBottom, size2);
        } else if (mode2 == 1073741824) {
            paddingBottom = size2;
        }
        setMeasuredDimension(paddingRight, paddingBottom);
        an5 an5Var = this.a;
        int paddingLeft = ((paddingRight - getPaddingLeft()) - getPaddingRight()) - h();
        int paddingTop = (paddingBottom - getPaddingTop()) - getPaddingBottom();
        an5Var.a = paddingLeft;
        an5Var.b = paddingTop;
        for (in5 in5Var : this.i) {
            in5Var.g = a(paddingRight, Math.max(in5Var.a, this.m)) + in5Var.c;
            in5Var.h = a(paddingRight, Math.min(in5Var.b, this.n)) - in5Var.d;
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        jn5 jn5Var;
        float fB;
        float fB2;
        float fB3;
        int scaledTouchSlop;
        if (!this.C) {
            return false;
        }
        int x = (((int) motionEvent.getX()) - getPaddingLeft()) - (h() / 2);
        int action = motionEvent.getAction();
        if (action == 0) {
            if (j()) {
                int iAbs = Math.abs(x - a(getWidth(), this.s));
                Float f = this.v;
                f.getClass();
                jn5Var = iAbs < Math.abs(x - a(getWidth(), f.floatValue())) ? jn5.THUMB : jn5.THUMB_SECONDARY;
            } else {
                jn5Var = jn5.THUMB;
            }
            this.B = jn5Var;
            if (this.p == null && this.o == null) {
                float f2 = this.m;
                float width = ((this.n - f2) * x) / (((getWidth() - getPaddingLeft()) - getPaddingRight()) - h());
                if (oh6.b(this)) {
                    width = (this.n - width) - 1.0f;
                }
                fB = f2 + width;
            } else {
                float f3 = this.m;
                float width2 = ((this.n - f3) * x) / (((getWidth() - getPaddingLeft()) - getPaddingRight()) - h());
                if (oh6.b(this)) {
                    width2 = (this.n - width2) - 1.0f;
                }
                fB = defpackage.w65.b(f3 + width2);
            }
            boolean z = this.l;
            int iOrdinal = jn5Var.ordinal();
            if (iOrdinal == 0) {
                a(fB, z, false);
            } else {
                if (iOrdinal != 1) {
                    defpackage.me0.e();
                    return false;
                }
                a(Float.valueOf(fB), z, false);
            }
            this.E = motionEvent.getX();
            this.F = motionEvent.getY();
            return true;
        }
        if (action == 1) {
            jn5 jn5Var2 = this.B;
            if (this.p == null && this.o == null) {
                float f4 = this.m;
                float width3 = ((this.n - f4) * x) / (((getWidth() - getPaddingLeft()) - getPaddingRight()) - h());
                if (oh6.b(this)) {
                    width3 = (this.n - width3) - 1.0f;
                }
                fB2 = f4 + width3;
            } else {
                float f5 = this.m;
                float width4 = ((this.n - f5) * x) / (((getWidth() - getPaddingLeft()) - getPaddingRight()) - h());
                if (oh6.b(this)) {
                    width4 = (this.n - width4) - 1.0f;
                }
                fB2 = defpackage.w65.b(f5 + width4);
            }
            boolean z2 = this.l;
            int iOrdinal2 = jn5Var2.ordinal();
            if (iOrdinal2 == 0) {
                a(fB2, z2, false);
            } else {
                if (iOrdinal2 != 1) {
                    defpackage.me0.e();
                    return false;
                }
                a(Float.valueOf(fB2), z2, false);
            }
            return true;
        }
        if (action != 2) {
            return false;
        }
        jn5 jn5Var3 = this.B;
        if (this.p == null && this.o == null) {
            float f6 = this.m;
            float width5 = ((this.n - f6) * x) / (((getWidth() - getPaddingLeft()) - getPaddingRight()) - h());
            if (oh6.b(this)) {
                width5 = (this.n - width5) - 1.0f;
            }
            fB3 = f6 + width5;
        } else {
            float f7 = this.m;
            float width6 = ((this.n - f7) * x) / (((getWidth() - getPaddingLeft()) - getPaddingRight()) - h());
            if (oh6.b(this)) {
                width6 = (this.n - width6) - 1.0f;
            }
            fB3 = defpackage.w65.b(f7 + width6);
        }
        int iOrdinal3 = jn5Var3.ordinal();
        if (iOrdinal3 == 0) {
            a(fB3, false, true);
        } else {
            if (iOrdinal3 != 1) {
                defpackage.me0.e();
                return false;
            }
            a(Float.valueOf(fB3), false, true);
        }
        Integer num = this.G;
        if (num != null) {
            scaledTouchSlop = num.intValue();
        } else {
            scaledTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
            this.G = Integer.valueOf(scaledTouchSlop);
        }
        float fAbs = Math.abs(motionEvent.getY() - this.F);
        if (fAbs < scaledTouchSlop) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else {
            getParent().requestDisallowInterceptTouchEvent(fAbs / Math.abs(motionEvent.getX() - this.E) <= this.D);
        }
        this.E = motionEvent.getX();
        this.F = motionEvent.getY();
        return true;
    }

    public final void setActiveTickMarkDrawable(Drawable drawable) {
        this.o = drawable;
        this.z = -1;
        a(defpackage.w65.b(this.s), false, true);
        Float f = this.v;
        if (f != null) {
            a(Float.valueOf(defpackage.w65.b(f.floatValue())), false, true);
        }
        invalidate();
    }

    public final void setActiveTrackDrawable(Drawable drawable) {
        this.q = drawable;
        invalidate();
    }

    public final void setAnimationDuration(long j) {
        if (this.j == j || j < 0) {
            return;
        }
        this.j = j;
    }

    public final void setAnimationEnabled(boolean z) {
        this.l = z;
    }

    public final void setInactiveTickMarkDrawable(Drawable drawable) {
        this.p = drawable;
        this.z = -1;
        a(defpackage.w65.b(this.s), false, true);
        Float f = this.v;
        if (f != null) {
            a(Float.valueOf(defpackage.w65.b(f.floatValue())), false, true);
        }
        invalidate();
    }

    public final void setInactiveTrackDrawable(Drawable drawable) {
        this.r = drawable;
        invalidate();
    }

    public final void setInteractive(boolean z) {
        this.C = z;
    }

    public final void setInterceptionAngle(float f) {
        this.D = (float) Math.tan(Math.max(45.0f, Math.abs(f) % 90.0f));
    }

    public final void setMaxValue(float f) {
        if (this.n == f) {
            return;
        }
        setMinValue(Math.min(this.m, f - 1.0f));
        this.n = f;
        k();
        invalidate();
    }

    public final void setMinValue(float f) {
        if (this.m == f) {
            return;
        }
        setMaxValue(Math.max(this.n, 1.0f + f));
        this.m = f;
        k();
        invalidate();
    }

    public final void setThumbDrawable(Drawable drawable) {
        this.t = drawable;
        this.z = -1;
        invalidate();
    }

    public final void setThumbSecondTextDrawable(cw5 cw5Var) {
        this.y = cw5Var;
        invalidate();
    }

    public final void setThumbSecondaryDrawable(Drawable drawable) {
        this.x = drawable;
        this.z = -1;
        invalidate();
    }

    public final void setThumbSecondaryValue(Float f, boolean z) {
        a(f, z, true);
    }

    public final void setThumbTextDrawable(cw5 cw5Var) {
        this.u = cw5Var;
        invalidate();
    }

    public final void setThumbValue(float f, boolean z) {
        a(f, z, true);
    }

    public final void setValueToAccessibilityThumb$mobileads_externalRelease(jn5 jn5Var, float f) {
        float fMin = Math.min(Math.max(f, this.m), this.n);
        int iOrdinal = jn5Var.ordinal();
        if (iOrdinal == 0) {
            a(fMin, false, true);
        } else if (iOrdinal == 1) {
            a(Float.valueOf(fMin), false, true);
        } else {
            defpackage.me0.e();
        }
    }

    public static final void b(kn5 kn5Var, ValueAnimator valueAnimator) {
        Object animatedValue = valueAnimator.getAnimatedValue();
        animatedValue.getClass();
        kn5Var.s = ((Float) animatedValue).floatValue();
        kn5Var.postInvalidateOnAnimation();
    }

    public kn5(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ kn5(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public kn5(Context context) {
        this(context, null, 6, 0);
    }

    public static final j59 a(kn5 kn5Var, boolean z) {
        kn5Var.c = null;
        if (!z) {
            Float fValueOf = Float.valueOf(kn5Var.d);
            float f = kn5Var.s;
            if (!defpackage.aa4.c(fValueOf, f)) {
                Iterator it = kn5Var.b.iterator();
                while (true) {
                    fp4 fp4Var = (fp4) it;
                    if (!fp4Var.hasNext()) {
                        break;
                    }
                    ((gn5) fp4Var.next()).a(f);
                }
            }
        }
        return j59.a;
    }

    public static final void a(kn5 kn5Var, ValueAnimator valueAnimator) {
        Object animatedValue = valueAnimator.getAnimatedValue();
        animatedValue.getClass();
        kn5Var.v = (Float) animatedValue;
        kn5Var.postInvalidateOnAnimation();
    }

    public final int a(int i, float f) {
        return defpackage.w65.b(((((i - getPaddingLeft()) - getPaddingRight()) - h()) / (this.n - this.m)) * (oh6.b(this) ? this.n - f : f - this.m));
    }

    public final void a(float f, boolean z, boolean z2) {
        ValueAnimator valueAnimator;
        float fMin = Math.min(Math.max(f, this.m), this.n);
        float f2 = this.s;
        if (f2 == fMin) {
            return;
        }
        if (z && this.l) {
            ValueAnimator valueAnimator2 = this.c;
            if (valueAnimator2 == null) {
                this.d = f2;
            }
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.s, fMin);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: z0a
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    kn5.b(this.a, valueAnimator3);
                }
            });
            valueAnimatorOfFloat.addListener(this.g);
            valueAnimatorOfFloat.setDuration(this.j);
            valueAnimatorOfFloat.setInterpolator(this.k);
            valueAnimatorOfFloat.start();
            this.c = valueAnimatorOfFloat;
        } else {
            if (z2 && (valueAnimator = this.c) != null) {
                valueAnimator.cancel();
            }
            if (z2 || this.c == null) {
                float f3 = this.s;
                this.d = f3;
                this.s = fMin;
                Float fValueOf = Float.valueOf(f3);
                float f4 = this.s;
                if (!defpackage.aa4.c(fValueOf, f4)) {
                    Iterator it = this.b.iterator();
                    while (true) {
                        fp4 fp4Var = (fp4) it;
                        if (!fp4Var.hasNext()) {
                            break;
                        } else {
                            ((gn5) fp4Var.next()).a(f4);
                        }
                    }
                }
            }
        }
        invalidate();
    }

    public static void a(in5 in5Var, kn5 kn5Var, Canvas canvas, Drawable drawable, int i, int i2, int i3) {
        if ((i3 & 16) != 0) {
            i = in5Var.g;
        }
        if ((i3 & 32) != 0) {
            i2 = in5Var.h;
        }
        an5 an5Var = kn5Var.a;
        if (drawable == null) {
            an5Var.getClass();
            return;
        }
        drawable.setBounds(i, (an5Var.b / 2) - (drawable.getIntrinsicHeight() / 2), i2, (drawable.getIntrinsicHeight() / 2) + (an5Var.b / 2));
        drawable.draw(canvas);
    }
}
