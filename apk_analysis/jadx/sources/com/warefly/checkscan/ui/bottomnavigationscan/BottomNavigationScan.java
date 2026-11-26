package com.warefly.checkscan.ui.bottomnavigationscan;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.warefly.checkscan.R;
import defpackage.aa4;
import defpackage.pm;

/* JADX INFO: loaded from: classes5.dex */
public class BottomNavigationScan extends BottomNavigationView {
    public final Path b;
    public final Path c;
    public final Paint d;
    public final Paint e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BottomNavigationScan(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        this.b = new Path();
        Paint paint = new Paint();
        this.d = paint;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        Paint paint2 = this.d;
        if (paint2 == null) {
            aa4.j("mPaint");
            throw null;
        }
        paint2.setColor(ContextCompat.getColor(getContext(), R.color.white));
        setBackgroundColor(0);
        this.c = new Path();
        Paint paint3 = new Paint();
        this.e = paint3;
        paint3.setStyle(style);
        Paint paint4 = this.e;
        if (paint4 != null) {
            paint4.setColor(ContextCompat.getColor(getContext(), R.color.white));
        } else {
            aa4.j("mPaint2");
            throw null;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.getClass();
        super.onDraw(canvas);
        Path path = this.b;
        if (path == null) {
            aa4.j("mPath");
            throw null;
        }
        Paint paint = this.d;
        if (paint == null) {
            aa4.j("mPaint");
            throw null;
        }
        canvas.drawPath(path, paint);
        Path path2 = this.c;
        if (path2 == null) {
            aa4.j("mPath2");
            throw null;
        }
        Paint paint2 = this.e;
        if (paint2 != null) {
            canvas.drawPath(path2, paint2);
        } else {
            aa4.j("mPaint2");
            throw null;
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        getWidth();
        getHeight();
    }

    public final void setAnimatedBadge(int i, boolean z) {
        ImageView imageView;
        ViewGroup viewGroup = (ViewGroup) findViewById(i);
        if (viewGroup != null) {
            imageView = (ImageView) viewGroup.findViewById(R.id.menu_item_badge);
            if (imageView == null) {
                LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.animated_badge, viewGroup, true);
                imageView = (ImageView) viewGroup.findViewById(R.id.menu_item_badge);
            }
        } else {
            imageView = null;
        }
        if (imageView != null) {
            if (!z) {
                imageView.setVisibility(8);
                return;
            }
            imageView.setVisibility(0);
            Context context = getContext();
            context.getClass();
            pm.b(context, R.drawable.circle_pulse_animated, imageView);
        }
    }
}
