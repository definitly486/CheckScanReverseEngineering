package com.google.android.gms.internal.base;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import defpackage.ah;
import defpackage.dla;
import defpackage.zka;

/* JADX INFO: loaded from: classes4.dex */
public final class zah extends Drawable implements Drawable.Callback {
    public int b;
    public long c;
    public int d;
    public int e;
    public int f;
    public int g;
    public final boolean h;
    public boolean i;
    public final dla j;
    public final Drawable k;
    public final Drawable l;
    public boolean m;
    public boolean n;
    public boolean o;
    public int p;

    public zah(Drawable drawable, Drawable drawable2) {
        this(null);
        drawable = drawable == null ? zka.a : drawable;
        this.k = drawable;
        drawable.setCallback(this);
        dla dlaVar = this.j;
        dlaVar.b = drawable.getChangingConfigurations() | dlaVar.b;
        drawable2 = drawable2 == null ? zka.a : drawable2;
        this.l = drawable2;
        drawable2.setCallback(this);
        this.j.b |= drawable2.getChangingConfigurations();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x005b  */
    /* JADX WARN: Code duplicated, block: B:36:? A[RETURN, SYNTHETIC] */
    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z;
        int i;
        int i2 = this.b;
        int i3 = 0;
        if (i2 == 1) {
            this.c = SystemClock.uptimeMillis();
            this.b = 2;
            z = false;
        } else if (i2 == 2 && this.c >= 0) {
            float fUptimeMillis = (SystemClock.uptimeMillis() - this.c) / this.f;
            z = fUptimeMillis >= 1.0f;
            if (z) {
                this.b = 0;
            }
            this.g = (int) ((this.d * Math.min(fUptimeMillis, 1.0f)) + 0.0f);
        } else {
            z = true;
        }
        int i4 = this.g;
        boolean z2 = this.h;
        Drawable drawable = this.k;
        Drawable drawable2 = this.l;
        if (!z) {
            if (z2) {
                drawable.setAlpha(this.e - i4);
                i3 = 1;
            }
            drawable.draw(canvas);
            if (i3 != 0) {
                drawable.setAlpha(this.e);
            }
            if (i4 > 0) {
                drawable2.setAlpha(i4);
                drawable2.draw(canvas);
                drawable2.setAlpha(this.e);
            }
            invalidateSelf();
            return;
        }
        if (z2) {
            if (i4 == 0) {
            }
            i = this.e;
            if (i4 == i) {
                drawable2.setAlpha(i);
                drawable2.draw(canvas);
            }
        }
        i3 = i4;
        drawable.draw(canvas);
        i4 = i3;
        i = this.e;
        if (i4 == i) {
            drawable2.setAlpha(i);
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        dla dlaVar = this.j;
        return dlaVar.b | changingConfigurations | dlaVar.a;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!zaa()) {
            return null;
        }
        int changingConfigurations = getChangingConfigurations();
        dla dlaVar = this.j;
        dlaVar.a = changingConfigurations;
        return dlaVar;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return Math.max(this.k.getIntrinsicHeight(), this.l.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.max(this.k.getIntrinsicWidth(), this.l.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        if (!this.o) {
            this.p = Drawable.resolveOpacity(this.k.getOpacity(), this.l.getOpacity());
            this.o = true;
        }
        return this.p;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (this.i || super.mutate() != this) {
            return this;
        }
        if (!zaa()) {
            ah.f("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            return null;
        }
        this.k.mutate();
        this.l.mutate();
        this.i = true;
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.k.setBounds(rect);
        this.l.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.g == this.e) {
            this.g = i;
        }
        this.e = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.k.setColorFilter(colorFilter);
        this.l.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final boolean zaa() {
        if (!this.m) {
            boolean z = false;
            if (this.k.getConstantState() != null && this.l.getConstantState() != null) {
                z = true;
            }
            this.n = z;
            this.m = true;
        }
        return this.n;
    }

    public final Drawable zab() {
        return this.l;
    }

    public final void zac(int i) {
        this.d = this.e;
        this.g = 0;
        this.f = 250;
        this.b = 1;
        invalidateSelf();
    }

    public zah(dla dlaVar) {
        this.b = 0;
        this.e = 255;
        this.g = 0;
        this.h = true;
        dla dlaVar2 = new dla();
        if (dlaVar != null) {
            dlaVar2.a = dlaVar.a;
            dlaVar2.b = dlaVar.b;
        }
        this.j = dlaVar2;
    }
}
