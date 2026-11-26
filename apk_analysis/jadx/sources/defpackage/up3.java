package defpackage;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class up3 extends Drawable implements zp3.b, Animatable, Animatable2Compat {
    public final a b;
    public boolean c;
    public boolean d;
    public boolean e;
    public boolean f;
    public int g;
    public int h;
    public boolean i;
    public Paint j;
    public Rect k;
    public ArrayList l;

    public up3() {
        throw null;
    }

    public up3(a aVar) {
        this.f = true;
        this.h = -1;
        this.b = aVar;
    }

    @Override // zp3.b
    public final void a() {
        Object callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        if (callback == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        zp3 zp3Var = this.b.a;
        zp3.a aVar = zp3Var.i;
        if ((aVar != null ? aVar.c : -1) == zp3Var.a.l.c - 1) {
            this.g++;
        }
        int i = this.h;
        if (i == -1 || this.g < i) {
            return;
        }
        stop();
        ArrayList arrayList = this.l;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((Animatable2Compat.AnimationCallback) this.l.get(i2)).onAnimationEnd(this);
            }
        }
    }

    public final void b() {
        r96.a(!this.e, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        zp3 zp3Var = this.b.a;
        if (zp3Var.a.l.c == 1) {
            invalidateSelf();
            return;
        }
        if (this.c) {
            return;
        }
        this.c = true;
        ArrayList arrayList = zp3Var.c;
        if (zp3Var.j) {
            ah.f("Cannot subscribe to a cleared frame loader");
            return;
        }
        if (arrayList.contains(this)) {
            ah.f("Cannot subscribe twice in a row");
            return;
        }
        boolean zIsEmpty = arrayList.isEmpty();
        arrayList.add(this);
        if (zIsEmpty && !zp3Var.f) {
            zp3Var.f = true;
            zp3Var.j = false;
            zp3Var.a();
        }
        invalidateSelf();
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public final void clearAnimationCallbacks() {
        ArrayList arrayList = this.l;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.e) {
            return;
        }
        if (this.i) {
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            Rect bounds = getBounds();
            Rect rect = this.k;
            if (rect == null) {
                rect = new Rect();
                this.k = rect;
            }
            Gravity.apply(119, intrinsicWidth, intrinsicHeight, bounds, rect);
            this.i = false;
        }
        zp3 zp3Var = this.b.a;
        zp3.a aVar = zp3Var.i;
        Bitmap bitmap = aVar != null ? aVar.e : zp3Var.l;
        Rect rect2 = this.k;
        if (rect2 == null) {
            rect2 = new Rect();
            this.k = rect2;
        }
        Paint paint = this.j;
        if (paint == null) {
            paint = new Paint(2);
            this.j = paint;
        }
        canvas.drawBitmap(bitmap, (Rect) null, rect2, paint);
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.b.a.q;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.b.a.p;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.c;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.i = true;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public final void registerAnimationCallback(Animatable2Compat.AnimationCallback animationCallback) {
        if (animationCallback == null) {
            return;
        }
        ArrayList arrayList = this.l;
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.l = arrayList;
        }
        arrayList.add(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Paint paint = this.j;
        if (paint == null) {
            paint = new Paint(2);
            this.j = paint;
        }
        paint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Paint paint = this.j;
        if (paint == null) {
            paint = new Paint(2);
            this.j = paint;
        }
        paint.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        r96.a(!this.e, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f = z;
        if (!z) {
            this.c = false;
            zp3 zp3Var = this.b.a;
            ArrayList arrayList = zp3Var.c;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                zp3Var.f = false;
            }
        } else if (this.d) {
            b();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.d = true;
        this.g = 0;
        if (this.f) {
            b();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.d = false;
        this.c = false;
        zp3 zp3Var = this.b.a;
        ArrayList arrayList = zp3Var.c;
        arrayList.remove(this);
        if (arrayList.isEmpty()) {
            zp3Var.f = false;
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public final boolean unregisterAnimationCallback(Animatable2Compat.AnimationCallback animationCallback) {
        ArrayList arrayList = this.l;
        if (arrayList == null || animationCallback == null) {
            return false;
        }
        return arrayList.remove(animationCallback);
    }

    public static final class a extends Drawable.ConstantState {
        public final zp3 a;

        public a(zp3 zp3Var) {
            this.a = zp3Var;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new up3(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new up3(this);
        }
    }
}
