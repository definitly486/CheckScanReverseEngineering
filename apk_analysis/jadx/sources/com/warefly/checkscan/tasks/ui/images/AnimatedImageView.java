package com.warefly.checkscan.tasks.ui.images;

import android.animation.AnimatorSet;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.bumptech.glide.a;
import defpackage.fm;
import defpackage.h37;
import defpackage.j59;
import defpackage.kx2;
import defpackage.oh;
import defpackage.ph;
import defpackage.xl;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class AnimatedImageView extends View {
    public static final /* synthetic */ int C = 0;
    public final Rect A;
    public final RectF B;
    public List<String> b;
    public final AtomicInteger c;
    public volatile Bitmap d;
    public volatile fm e;
    public float f;
    public float g;
    public float h;
    public float i;
    public float j;
    public float k;
    public final Paint l;
    public int m;
    public final AtomicBoolean n;
    public final AtomicBoolean o;
    public volatile AnimatorSet p;
    public final AtomicInteger q;
    public final long r;
    public final long s;
    public final long t;
    public float u;
    public float v;
    public float w;
    public float x;
    public float y;
    public float z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
        this.b = kx2.b;
        this.c = new AtomicInteger(0);
        this.j = 1.0f;
        this.l = new Paint(1);
        this.m = 255;
        this.n = new AtomicBoolean(false);
        this.o = new AtomicBoolean(false);
        this.q = new AtomicInteger(0);
        this.r = 400L;
        this.s = 2000L;
        this.t = 400L;
        this.A = new Rect();
        this.B = new RectF();
    }

    public final void b() {
        if (!isAttachedToWindow() || this.b.isEmpty() || !this.o.get()) {
            this.n.set(false);
            return;
        }
        if (this.b.isEmpty() || !isAttachedToWindow() || !this.o.get()) {
            this.n.set(false);
            return;
        }
        int iIncrementAndGet = this.q.incrementAndGet();
        synchronized (this) {
            if (this.b.isEmpty()) {
                this.n.set(false);
                return;
            }
            int i = this.c.get();
            String str = this.b.get(i);
            this.c.set((i + 1) % this.b.size());
            j59 j59Var = j59.a;
            fm fmVar = this.e;
            if (fmVar != null) {
                try {
                    a.d(getContext()).c(fmVar);
                } catch (Exception unused) {
                }
            }
            this.e = null;
            AnimatorSet animatorSet = this.p;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            this.p = null;
            fm fmVar2 = new fm(iIncrementAndGet, this);
            this.e = fmVar2;
            try {
                h37<Bitmap> h37VarN = a.d(getContext()).b().N(str);
                h37VarN.K(fmVar2, h37VarN);
            } catch (Exception unused2) {
                this.n.set(false);
                this.e = null;
            }
        }
    }

    public final void c() {
        if (getWidth() <= 0 || getHeight() <= 0) {
            return;
        }
        float width = getWidth();
        float height = getHeight();
        float f = 0.5f * width;
        float f2 = this.h;
        this.u = f - (f2 / 2.0f);
        float f3 = this.i;
        this.v = -f3;
        this.w = (width * 0.15f) - (f2 / 2.0f);
        this.x = (0.3f * height) - (f3 / 2.0f);
        this.y = f - (f2 / 2.0f);
        this.z = height - (f3 * 0.9f);
        getHeight();
    }

    public final void d() {
        Bitmap bitmap = this.d;
        if (bitmap == null || getWidth() <= 0 || getHeight() <= 0) {
            return;
        }
        float height = getHeight();
        float width = bitmap.getWidth() / bitmap.getHeight();
        this.i = height;
        this.h = height * width;
    }

    public final void e() {
        AtomicBoolean atomicBoolean = this.n;
        if (atomicBoolean.compareAndSet(false, true)) {
            if (this.b.isEmpty()) {
                atomicBoolean.set(false);
            } else {
                b();
            }
        }
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.o.set(this.b.size() > 1);
        post(new xl(this, 0));
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.o.set(false);
        this.n.set(false);
        this.q.incrementAndGet();
        AnimatorSet animatorSet = this.p;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.p = null;
        fm fmVar = this.e;
        if (fmVar != null) {
            try {
                a.d(getContext()).c(fmVar);
            } catch (Exception unused) {
            }
        }
        this.e = null;
        AnimatorSet animatorSet2 = this.p;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        this.p = null;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.getClass();
        super.onDraw(canvas);
        Bitmap bitmap = this.d;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        int iSave = canvas.save();
        try {
            float f = (this.h / 2.0f) + this.g;
            float f2 = (this.i / 2.0f) + this.f;
            canvas.rotate(this.k, f, f2);
            float f3 = this.j;
            canvas.scale(f3, f3, f, f2);
            int alpha = this.l.getAlpha();
            this.l.setAlpha(this.m);
            this.A.set(0, 0, bitmap.getWidth(), bitmap.getHeight());
            RectF rectF = this.B;
            float f4 = this.g;
            float f5 = this.f;
            rectF.set(f4, f5, this.h + f4, this.i + f5);
            canvas.drawBitmap(bitmap, this.A, this.B, this.l);
            this.l.setAlpha(alpha);
        } finally {
            canvas.restoreToCount(iSave);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i <= 0 || i2 <= 0) {
            return;
        }
        post(new oh(this, 1));
    }

    public final void setImageUrls(List<String> list) {
        list.getClass();
        synchronized (this) {
            try {
                this.b = list;
                this.c.set(0);
                int i = 1;
                this.o.set(list.size() > 1);
                if (!list.isEmpty() && getWidth() > 0 && getHeight() > 0) {
                    post(new ph(this, i));
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AnimatedImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
        context.getClass();
    }

    public /* synthetic */ AnimatedImageView(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AnimatedImageView(Context context) {
        this(context, null, 6, 0);
        context.getClass();
    }
}
