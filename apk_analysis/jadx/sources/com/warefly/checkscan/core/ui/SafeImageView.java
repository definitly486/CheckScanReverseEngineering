package com.warefly.checkscan.core.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import defpackage.j59;
import defpackage.k57;

/* JADX INFO: loaded from: classes.dex */
public final class SafeImageView extends AppCompatImageView {
    public Drawable o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SafeImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        Object aVar;
        canvas.getClass();
        try {
            super.onDraw(canvas);
            aVar = j59.a;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA == null || !(thA instanceof RuntimeException)) {
            return;
        }
        try {
            setImageDrawable(this.o);
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
    }

    public final void setImageDrawableWithCache(Drawable drawable) {
        this.o = drawable;
        setImageDrawable(drawable);
    }
}
