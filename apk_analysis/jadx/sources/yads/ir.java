package yads;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.core.view.ViewCompat;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class ir extends LinearLayout {
    public int a;
    public int b;
    public int c;
    public int d;
    public float e;
    public int f;
    public int[] g;
    public int[] h;
    public float[] i;
    public int j;
    public int k;
    public int l;
    public ValueAnimator m;
    public final Paint n;
    public final Path o;
    public final RectF p;
    public final int q;
    public final int r;
    public boolean s;
    public float t;
    public int u;
    public er v;

    public ir(Context context, int i, int i2) {
        super(context);
        this.b = -1;
        this.c = -1;
        this.d = -1;
        this.f = 0;
        this.j = -1;
        this.k = -1;
        this.t = 1.0f;
        this.u = -1;
        this.v = er.SLIDE;
        setId(R$id.monetization_ads_divkit_tab_sliding_oval_indicator);
        setWillNotDraw(false);
        int childCount = getChildCount();
        this.l = childCount;
        if (this.s) {
            childCount = (childCount + 1) / 2;
            this.l = childCount;
        }
        this.l = childCount;
        this.g = new int[childCount];
        this.h = new int[childCount];
        for (int i3 = 0; i3 < this.l; i3++) {
            this.g[i3] = -1;
            this.h[i3] = -1;
        }
        Paint paint = new Paint();
        this.n = paint;
        paint.setAntiAlias(true);
        this.p = new RectF();
        this.q = i;
        this.r = i2;
        this.o = new Path();
        this.i = new float[8];
    }

    public final void a() {
        int right;
        int left;
        int right2;
        int i;
        int childCount = getChildCount();
        if (childCount != this.l) {
            this.l = childCount;
            this.g = new int[childCount];
            this.h = new int[childCount];
            for (int i2 = 0; i2 < this.l; i2++) {
                this.g[i2] = -1;
                this.h[i2] = -1;
            }
        }
        int iA = a(this.d);
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt instanceof xu5) {
                if (childAt.getWidth() > 0) {
                    left = childAt.getLeft();
                    right = childAt.getRight();
                    if (this.v != er.SLIDE || i3 != iA || this.e <= 0.0f || i3 >= childCount - 1) {
                        right2 = right;
                        i = left;
                    } else {
                        View childAt2 = getChildAt(this.s ? i3 + 2 : i3 + 1);
                        float left2 = this.e * childAt2.getLeft();
                        float f = this.e;
                        i = (int) (((1.0f - f) * left) + left2);
                        right2 = (int) (((1.0f - this.e) * right) + (f * childAt2.getRight()));
                    }
                } else {
                    right = -1;
                    left = -1;
                    right2 = -1;
                    i = -1;
                }
                int[] iArr = this.g;
                int i4 = iArr[i3];
                int[] iArr2 = this.h;
                int i5 = iArr2[i3];
                if (left != i4 || right != i5) {
                    iArr[i3] = left;
                    iArr2[i3] = right;
                    ViewCompat.postInvalidateOnAnimation(this);
                }
                if (i3 == iA && (i != this.j || right2 != this.k)) {
                    this.j = i;
                    this.k = right2;
                    ViewCompat.postInvalidateOnAnimation(this);
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        int childCount = getChildCount();
        if (i < 0) {
            i = childCount;
        }
        if (i != 0) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.leftMargin = this.f;
            super.addView(view, i, marginLayoutParams);
            return;
        }
        if (childCount != 0) {
            View childAt = getChildAt(0);
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            marginLayoutParams2.leftMargin = this.f;
            updateViewLayout(childAt, marginLayoutParams2);
        }
        ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams3.leftMargin = 0;
        super.addView(view, i, marginLayoutParams3);
    }

    public final void b(int i, long j) {
        if (i != this.d) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.setInterpolator(nr.G);
            valueAnimatorOfFloat.setDuration(j);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: hz9
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.a.a(valueAnimator);
                }
            });
            valueAnimatorOfFloat.addListener(new hr(this));
            this.u = i;
            this.m = valueAnimatorOfFloat;
            valueAnimatorOfFloat.start();
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        float height = getHeight();
        if (this.c != -1) {
            int i = this.l;
            for (int i2 = 0; i2 < i; i2++) {
                a(canvas, this.g[i2], this.h[i2], height, this.c, 1.0f);
            }
        }
        if (this.b != -1) {
            int iA = a(this.d);
            int iA2 = a(this.u);
            int iOrdinal = this.v.ordinal();
            if (iOrdinal != 0) {
                int[] iArr = this.g;
                if (iOrdinal != 1) {
                    a(canvas, iArr[iA], this.h[iA], height, this.b, 1.0f);
                } else {
                    a(canvas, iArr[iA], this.h[iA], height, this.b, this.t);
                    if (this.u != -1) {
                        a(canvas, this.g[iA2], this.h[iA2], height, this.b, 1.0f - this.t);
                    }
                }
            } else {
                a(canvas, this.j, this.k, height, this.b, 1.0f);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        a();
        ValueAnimator valueAnimator = this.m;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.m.cancel();
        a(this.u, Math.round((1.0f - this.m.getAnimatedFraction()) * this.m.getDuration()));
    }

    public final void a(er erVar) {
        if (this.v != erVar) {
            this.v = erVar;
            ValueAnimator valueAnimator = this.m;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                return;
            }
            this.m.cancel();
        }
    }

    public final void a(int i, long j) {
        ValueAnimator valueAnimator = this.m;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.m.cancel();
            j = Math.round((1.0f - this.m.getAnimatedFraction()) * this.m.getDuration());
        }
        long j2 = j;
        View childAt = getChildAt(a(i));
        if (childAt == null) {
            a();
            return;
        }
        int iOrdinal = this.v.ordinal();
        if (iOrdinal == 0) {
            a(i, j2, this.j, this.k, childAt.getLeft(), childAt.getRight());
            return;
        }
        if (iOrdinal != 1) {
            ValueAnimator valueAnimator2 = this.m;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.m.cancel();
            }
            this.d = i;
            this.e = 0.0f;
            a();
            float f = 1.0f - this.e;
            if (f != this.t) {
                this.t = f;
                int i2 = this.d + 1;
                if (i2 >= this.l) {
                    i2 = -1;
                }
                this.u = i2;
                ViewCompat.postInvalidateOnAnimation(this);
                return;
            }
            return;
        }
        b(i, j2);
    }

    public final void a(Canvas canvas, int i, int i2, float f, int i3, float f2) {
        if (i < 0 || i2 <= i) {
            return;
        }
        this.p.set(i, this.q, i2, f - this.r);
        float fWidth = this.p.width();
        float fHeight = this.p.height();
        float[] fArr = new float[8];
        for (int i4 = 0; i4 < 8; i4++) {
            float f3 = this.i[i4];
            float fMin = 0.0f;
            if (fHeight > 0.0f && fWidth > 0.0f) {
                fMin = Math.min(fHeight, fWidth) / 2.0f;
                if (f3 != -1.0f) {
                    if (f3 > fMin) {
                        int i5 = rv3.a;
                        vj5[] vj5VarArr = vj5.b;
                    }
                    fMin = Math.min(f3, fMin);
                }
            }
            fArr[i4] = fMin;
        }
        this.o.reset();
        this.o.addRoundRect(this.p, fArr, Path.Direction.CW);
        this.o.close();
        this.n.setColor(i3);
        this.n.setAlpha(Math.round(this.n.getAlpha() * f2));
        canvas.drawPath(this.o, this.n);
    }

    public final int a(int i) {
        return (!this.s || i == -1) ? i : i * 2;
    }

    public final void a(int i, long j, final int i2, final int i3, final int i4, final int i5) {
        if (i2 == i4 && i3 == i5) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(nr.G);
        valueAnimatorOfFloat.setDuration(j);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: gz9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.a.a(i2, i4, i3, i5, valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new gr(this));
        this.u = i;
        this.m = valueAnimatorOfFloat;
        valueAnimatorOfFloat.start();
    }

    public final void a(int i, int i2, int i3, int i4, ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        int iRound = Math.round((i2 - i) * animatedFraction) + i;
        int iRound2 = Math.round(animatedFraction * (i4 - i3)) + i3;
        if (iRound != this.j || iRound2 != this.k) {
            this.j = iRound;
            this.k = iRound2;
            ViewCompat.postInvalidateOnAnimation(this);
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    public final /* synthetic */ void a(ValueAnimator valueAnimator) {
        this.t = 1.0f - valueAnimator.getAnimatedFraction();
        ViewCompat.postInvalidateOnAnimation(this);
    }
}
