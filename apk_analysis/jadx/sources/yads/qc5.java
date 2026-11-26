package yads;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes6.dex */
public final class qc5 extends Drawable implements Animatable {
    public final Drawable a;
    public final float b;
    public final float c;

    public qc5(Drawable drawable, float f) {
        this.a = drawable;
        this.b = f;
        this.c = f;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int iSave = canvas.save();
        try {
            canvas.scale(this.b, this.c);
            this.a.draw(canvas);
        } finally {
            canvas.restoreToCount(iSave);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        if (this.a.getIntrinsicHeight() == -1) {
            return -1;
        }
        return defpackage.w65.b(this.a.getIntrinsicHeight() * this.c);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        if (this.a.getIntrinsicWidth() == -1) {
            return -1;
        }
        return defpackage.w65.b(this.a.getIntrinsicWidth() * this.b);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.a.getOpacity();
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        Object obj = this.a;
        return (obj instanceof Animatable) && ((Animatable) obj).isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.a.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Object obj = this.a;
        if (obj instanceof Animatable) {
            ((Animatable) obj).start();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        Object obj = this.a;
        if (obj instanceof Animatable) {
            ((Animatable) obj).stop();
        }
    }
}
