package com.my.target.nativeads.views;

import android.R;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.my.target.f6;
import com.my.target.zh;
import defpackage.l3a;
import defpackage.rk3;
import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public class MediaAdView extends FrameLayout {
    public final zh b;
    public final ProgressBar c;
    public final f6 d;
    public final CollageView e;
    public int f;
    public int g;
    public float h;
    public int i;

    public MediaAdView(Context context) {
        super(context);
        this.i = -1;
        this.b = new zh(context);
        this.d = new f6(context);
        this.c = new ProgressBar(context, null, R.attr.progressBarStyle);
        this.e = new CollageView(context);
        a(context);
    }

    public final void a(Context context) {
        Bitmap bitmapCreateBitmap;
        View view = this.b;
        l3a.n(view, "media_image");
        ProgressBar progressBar = this.c;
        l3a.n(progressBar, "progress_bar");
        f6 f6Var = this.d;
        l3a.n(f6Var, "play_button");
        View view2 = this.e;
        l3a.n(view2, "collage_view");
        setBackgroundColor(-1118482);
        progressBar.setVisibility(8);
        Drawable indeterminateDrawable = progressBar.getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setColorFilter(-16733198, PorterDuff.Mode.SRC_ATOP);
        }
        int iB = (int) rk3.b(context, 1, 80.0f);
        Bitmap bitmap = null;
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(iB, iB, Bitmap.Config.ARGB_8888);
        } catch (OutOfMemoryError unused) {
            y14.r(null, "NativeAdResources: Cannot build play icon - OOME");
            bitmapCreateBitmap = null;
        }
        if (bitmapCreateBitmap != null) {
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setColor(-1157627904);
            float f = iB;
            canvas.drawOval(new RectF(0.0f, 0.0f, f, f), paint);
            Paint paint2 = new Paint();
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setColor(-1);
            paint2.setAntiAlias(true);
            paint2.setStrokeWidth(8.0f);
            paint2.setStrokeCap(Paint.Cap.ROUND);
            float f2 = iB - 4;
            canvas.drawOval(new RectF(4.0f, 4.0f, f2, f2), paint2);
            Paint paint3 = new Paint();
            paint3.setColor(0);
            canvas.drawPaint(paint3);
            paint3.setStrokeWidth(4.0f);
            paint3.setColor(-1);
            paint3.setStyle(Paint.Style.FILL_AND_STROKE);
            paint3.setAntiAlias(true);
            float f3 = f / 160.0f;
            int i = (int) (60.0f * f3);
            Point point = new Point(i, (int) (50.0f * f3));
            Point point2 = new Point(i, (int) (110.0f * f3));
            Point point3 = new Point((int) (112.0f * f3), (int) (f3 * 80.0f));
            Path path = new Path();
            path.setFillType(Path.FillType.EVEN_ODD);
            path.moveTo(point.x, point.y);
            path.lineTo(point2.x, point2.y);
            path.lineTo(point3.x, point3.y);
            path.lineTo(point.x, point.y);
            path.close();
            canvas.drawPath(path, paint3);
            bitmap = bitmapCreateBitmap;
        }
        f6Var.a(bitmap, false);
        f6Var.setVisibility(8);
        view2.setVisibility(8);
        addView(view);
        addView(f6Var, new FrameLayout.LayoutParams(-2, -2));
        addView(progressBar, new FrameLayout.LayoutParams(-2, -2));
        addView(view2, new FrameLayout.LayoutParams(-1, -2));
    }

    public CollageView getCollageView() {
        return this.e;
    }

    public int getHtml5ViewBackgroundColor() {
        return this.i;
    }

    public ImageView getImageView() {
        return this.b;
    }

    public float getMediaAspectRatio() {
        return this.h;
    }

    public View getPlayButtonView() {
        return this.d;
    }

    public ProgressBar getProgressBarView() {
        return this.c;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (measuredWidth != 0 && measuredHeight != 0) {
                    int i6 = ((i3 - i) - measuredWidth) / 2;
                    int i7 = ((i4 - i2) - measuredHeight) / 2;
                    childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
                }
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i5 = this.f;
        if (i5 == 0 || (i3 = this.g) == 0) {
            if (mode != 1073741824) {
                size = 0;
            }
            if (mode2 != 1073741824) {
                size2 = 0;
            }
            setMeasuredDimension(size, size2);
            return;
        }
        float f = i5 / i3;
        if (mode == 0 && mode2 == 0) {
            super.onMeasure(i, i2);
            return;
        }
        if (mode == 0) {
            size = (int) (size2 * f);
        } else if (mode2 == 0 || mode2 != 1073741824) {
            size2 = (int) (size / f);
        }
        int childCount = getChildCount();
        boolean z = false;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                int i7 = Integer.MIN_VALUE;
                if (layoutParams != null) {
                    i4 = layoutParams.width == -1 ? 1073741824 : Integer.MIN_VALUE;
                    if (layoutParams.height == -1) {
                        i7 = 1073741824;
                    }
                } else {
                    i4 = Integer.MIN_VALUE;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(size, i4), View.MeasureSpec.makeMeasureSpec(size2, i7));
                if (childAt.getMeasuredHeight() > 0) {
                    z = true;
                }
            }
        }
        if (z) {
            setMeasuredDimension(size, size2);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public void setHtml5ViewBackgroundColor(int i) {
        this.i = i;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        this.d.setOnClickListener(onClickListener);
    }

    public void setPlaceHolderDimension(int i, int i2) {
        this.f = i;
        this.g = i2;
        this.b.setPlaceholderDimensions(i, i2);
        float f = i2;
        this.h = f != 0.0f ? i / f : 0.0f;
    }

    public MediaAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.i = -1;
        this.b = new zh(context);
        this.d = new f6(context);
        this.c = new ProgressBar(context, null, R.attr.progressBarStyle);
        this.e = new CollageView(context);
        a(context);
    }

    public MediaAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.i = -1;
        this.b = new zh(context);
        this.d = new f6(context);
        this.c = new ProgressBar(context, null, R.attr.progressBarStyle);
        this.e = new CollageView(context);
        a(context);
    }
}
