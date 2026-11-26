package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import eightbitlab.com.blurview.BlurView;

/* JADX INFO: loaded from: classes5.dex */
public final class qe6 implements hk0 {
    public final gk0 c;
    public kk0 d;
    public Bitmap e;
    public final BlurView f;
    public final int g;
    public final ViewGroup h;
    public boolean l;
    public float b = 16.0f;
    public final int[] i = new int[2];
    public final int[] j = new int[2];
    public final a k = new a();

    public class a implements ViewTreeObserver.OnPreDrawListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            qe6.this.e();
            return true;
        }
    }

    public qe6(BlurView blurView, ViewGroup viewGroup, int i, gk0 gk0Var) {
        this.h = viewGroup;
        this.f = blurView;
        this.g = i;
        this.c = gk0Var;
        if (gk0Var instanceof d27) {
            ((d27) gk0Var).f = blurView.getContext();
        }
        d(blurView.getMeasuredWidth(), blurView.getMeasuredHeight());
    }

    @Override // defpackage.hk0
    public final hk0 a() {
        this.b = 10.0f;
        return this;
    }

    @Override // defpackage.hk0
    public final void b() {
        BlurView blurView = this.f;
        d(blurView.getMeasuredWidth(), blurView.getMeasuredHeight());
    }

    @Override // defpackage.hk0
    public final hk0 c(boolean z) {
        ViewGroup viewGroup = this.h;
        ViewTreeObserver viewTreeObserver = viewGroup.getViewTreeObserver();
        a aVar = this.k;
        viewTreeObserver.removeOnPreDrawListener(aVar);
        BlurView blurView = this.f;
        blurView.getViewTreeObserver().removeOnPreDrawListener(aVar);
        if (z) {
            viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
            if (viewGroup.getWindowId() != blurView.getWindowId()) {
                blurView.getViewTreeObserver().addOnPreDrawListener(aVar);
            }
        }
        return this;
    }

    public final void d(int i, int i2) {
        c(true);
        gk0 gk0Var = this.c;
        gk0Var.getClass();
        float f = i2;
        int iCeil = (int) Math.ceil(f / 6.0f);
        BlurView blurView = this.f;
        if (iCeil != 0) {
            float f2 = i;
            double d = f2 / 6.0f;
            if (((int) Math.ceil(d)) != 0) {
                blurView.setWillNotDraw(false);
                int iCeil2 = (int) Math.ceil(d);
                int i3 = iCeil2 % 64;
                if (i3 != 0) {
                    iCeil2 = (iCeil2 - i3) + 64;
                }
                int iCeil3 = (int) Math.ceil(f / (f2 / iCeil2));
                gk0Var.a();
                this.e = Bitmap.createBitmap(iCeil2, iCeil3, Bitmap.Config.ARGB_8888);
                this.d = new kk0(this.e);
                this.l = true;
                e();
                return;
            }
        }
        blurView.setWillNotDraw(true);
    }

    @Override // defpackage.hk0
    public final void destroy() {
        c(false);
        this.c.destroy();
        this.l = false;
    }

    @Override // defpackage.hk0
    public final boolean draw(Canvas canvas) {
        if (this.l) {
            if (canvas instanceof kk0) {
                return false;
            }
            BlurView blurView = this.f;
            float height = blurView.getHeight() / this.e.getHeight();
            float width = blurView.getWidth() / this.e.getWidth();
            canvas.save();
            canvas.scale(width, height);
            this.c.b(canvas, this.e);
            canvas.restore();
            int i = this.g;
            if (i != 0) {
                canvas.drawColor(i);
            }
        }
        return true;
    }

    public final void e() {
        if (this.l) {
            this.e.eraseColor(0);
            this.d.save();
            ViewGroup viewGroup = this.h;
            int[] iArr = this.i;
            viewGroup.getLocationOnScreen(iArr);
            BlurView blurView = this.f;
            int[] iArr2 = this.j;
            blurView.getLocationOnScreen(iArr2);
            int i = iArr2[0] - iArr[0];
            int i2 = iArr2[1] - iArr[1];
            float height = blurView.getHeight() / this.e.getHeight();
            float width = blurView.getWidth() / this.e.getWidth();
            this.d.translate((-i) / width, (-i2) / height);
            this.d.scale(1.0f / width, 1.0f / height);
            viewGroup.draw(this.d);
            this.d.restore();
            this.e = this.c.c(this.e, this.b);
        }
    }
}
