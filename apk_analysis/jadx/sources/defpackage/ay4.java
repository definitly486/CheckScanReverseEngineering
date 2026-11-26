package defpackage;

import android.animation.Animator;
import android.graphics.PointF;
import android.view.Choreographer;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class ay4 extends od0 implements Choreographer.FrameCallback {
    public float e;
    public boolean f;
    public long g;
    public float h;
    public float i;
    public int j;
    public float k;
    public float l;
    public nw4 m;
    public boolean n;
    public boolean o;

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final void cancel() {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationCancel(this);
        }
        b(k());
        l(true);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        boolean z = false;
        if (this.n) {
            l(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
        nw4 nw4Var = this.m;
        if (nw4Var == null || !this.n) {
            return;
        }
        dt dtVar = ah4.a;
        long j2 = this.g;
        float fAbs = (j2 != 0 ? j - j2 : 0L) / ((1.0E9f / nw4Var.n) / Math.abs(this.e));
        float f = this.h;
        if (k()) {
            fAbs = -fAbs;
        }
        float f2 = f + fAbs;
        float fJ = j();
        float fI = i();
        PointF pointF = hb5.a;
        if (f2 >= fJ && f2 <= fI) {
            z = true;
        }
        float f3 = this.h;
        float fB = hb5.b(f2, j(), i());
        this.h = fB;
        if (this.o) {
            fB = (float) Math.floor(fB);
        }
        this.i = fB;
        this.g = j;
        if (z) {
            if (!this.o || this.h != f3) {
                e();
            }
        } else if (getRepeatCount() == -1 || this.j < getRepeatCount()) {
            if (getRepeatMode() == 2) {
                this.f = !this.f;
                this.e = -this.e;
            } else {
                float fI2 = k() ? i() : j();
                this.h = fI2;
                this.i = fI2;
            }
            this.g = j;
            if (!this.o || this.h != f3) {
                e();
            }
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                ((Animator.AnimatorListener) it.next()).onAnimationRepeat(this);
            }
            this.j++;
        } else {
            float fJ2 = this.e < 0.0f ? j() : i();
            this.h = fJ2;
            this.i = fJ2;
            l(true);
            if (!this.o || this.h != f3) {
                e();
            }
            b(k());
        }
        if (this.m != null) {
            float f4 = this.i;
            float f5 = this.k;
            if (f4 < f5 || f4 > this.l) {
                throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(f5), Float.valueOf(this.l), Float.valueOf(this.i)));
            }
        }
        dt dtVar2 = ah4.a;
    }

    @Override // android.animation.ValueAnimator
    public final float getAnimatedFraction() {
        float fJ;
        float fI;
        float fJ2;
        if (this.m == null) {
            return 0.0f;
        }
        if (k()) {
            fJ = i() - this.i;
            fI = i();
            fJ2 = j();
        } else {
            fJ = this.i - j();
            fI = i();
            fJ2 = j();
        }
        return fJ / (fI - fJ2);
    }

    @Override // android.animation.ValueAnimator
    public final Object getAnimatedValue() {
        return Float.valueOf(h());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final long getDuration() {
        nw4 nw4Var = this.m;
        if (nw4Var == null) {
            return 0L;
        }
        return (long) nw4Var.b();
    }

    public final float h() {
        nw4 nw4Var = this.m;
        if (nw4Var == null) {
            return 0.0f;
        }
        float f = this.i;
        float f2 = nw4Var.l;
        return (f - f2) / (nw4Var.m - f2);
    }

    public final float i() {
        nw4 nw4Var = this.m;
        if (nw4Var == null) {
            return 0.0f;
        }
        float f = this.l;
        return f == 2.1474836E9f ? nw4Var.m : f;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final boolean isRunning() {
        return this.n;
    }

    public final float j() {
        nw4 nw4Var = this.m;
        if (nw4Var == null) {
            return 0.0f;
        }
        float f = this.k;
        return f == -2.1474836E9f ? nw4Var.l : f;
    }

    public final boolean k() {
        return this.e < 0.0f;
    }

    public final void l(boolean z) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z) {
            this.n = false;
        }
    }

    public final void p(float f) {
        if (this.h == f) {
            return;
        }
        float fB = hb5.b(f, j(), i());
        this.h = fB;
        if (this.o) {
            fB = (float) Math.floor(fB);
        }
        this.i = fB;
        this.g = 0L;
        e();
    }

    public final void q(float f, float f2) {
        if (f > f2) {
            gg.d("minFrame (", f, ") must be <= maxFrame (", f2, ")");
            return;
        }
        nw4 nw4Var = this.m;
        float f3 = nw4Var == null ? -3.4028235E38f : nw4Var.l;
        float f4 = nw4Var == null ? Float.MAX_VALUE : nw4Var.m;
        float fB = hb5.b(f, f3, f4);
        float fB2 = hb5.b(f2, f3, f4);
        if (fB == this.k && fB2 == this.l) {
            return;
        }
        this.k = fB;
        this.l = fB2;
        p((int) hb5.b(this.i, fB, fB2));
    }

    @Override // android.animation.ValueAnimator
    public final void setRepeatMode(int i) {
        super.setRepeatMode(i);
        if (i == 2 || !this.f) {
            return;
        }
        this.f = false;
        this.e = -this.e;
    }
}
