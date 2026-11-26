package com.my.target;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.util.DisplayMetrics;
import android.util.SparseIntArray;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.graphics.PathParser;
import defpackage.ko9;
import defpackage.kv9;
import defpackage.l3a;
import defpackage.y14;
import defpackage.yu9;

/* JADX INFO: loaded from: classes4.dex */
public final class r1 extends LinearLayout {
    public final e6 b;
    public final e6 c;
    public final e6 d;
    public final RelativeLayout e;
    public final TextView f;
    public final ko9 g;

    public r1(Context context) {
        Bitmap bitmapCreateBitmap;
        float f;
        Bitmap bitmap;
        Bitmap bitmapCreateBitmap2;
        Bitmap bitmap2;
        super(context);
        ko9 ko9Var = new ko9(context);
        this.g = ko9Var;
        yu9 yu9Var = new yu9(context);
        setOrientation(0);
        e6 e6Var = new e6(context);
        int i = ko9.C;
        SparseIntArray sparseIntArray = ko9Var.a;
        int i2 = sparseIntArray.get(i);
        int i3 = ko9.D;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, sparseIntArray.get(i3));
        int i4 = ko9.k;
        int i5 = sparseIntArray.get(i4);
        e6Var.setPadding(i5, i5, i5 / 2, i5);
        e6Var.setLayoutParams(layoutParams);
        int i6 = ko9.w;
        e6Var.a(kv9.b(getContext(), sparseIntArray.get(i6), true), false);
        this.b = e6Var;
        l3a.n(e6Var, "ad_choices_button");
        addView(e6Var);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        int i7 = sparseIntArray.get(i6);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i7, i7);
        int i8 = ko9.g;
        int i9 = sparseIntArray.get(i8);
        int i10 = sparseIntArray.get(i4);
        layoutParams2.setMargins(i9, i10, i10, i10);
        relativeLayout.setLayoutParams(layoutParams2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(yu9Var.a.get(yu9.d));
        gradientDrawable.setShape(1);
        relativeLayout.setBackground(gradientDrawable);
        relativeLayout.setGravity(49);
        relativeLayout.setPadding(0, sparseIntArray.get(i8), 0, sparseIntArray.get(ko9.j));
        relativeLayout.setClickable(true);
        relativeLayout.setFocusable(true);
        this.e = relativeLayout;
        addView(relativeLayout);
        TextView textView = new TextView(context);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, sparseIntArray.get(ko9.r)));
        textView.setTextSize(sparseIntArray.get(ko9.P));
        textView.setTypeface(null, 1);
        textView.setTextColor(-1);
        textView.setSingleLine(true);
        this.f = textView;
        l3a.n(textView, "progress_wheel");
        relativeLayout.addView(textView);
        e6 e6Var2 = new e6(context);
        int i11 = sparseIntArray.get(i4);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(sparseIntArray.get(i), sparseIntArray.get(i3));
        e6Var2.setPadding(i11 / 2, i11, i11, i11);
        e6Var2.setLayoutParams(layoutParams3);
        e6Var2.setVisibility(8);
        int i12 = sparseIntArray.get(i6);
        Context context2 = getContext();
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(i12, i12, Bitmap.Config.ARGB_8888);
        } catch (OutOfMemoryError unused) {
            y14.r(null, "BaseResources: Cannot build icon - OOME");
            bitmapCreateBitmap = null;
        }
        if (bitmapCreateBitmap == null) {
            bitmapCreateBitmap = null;
            f = 2.0f;
        } else {
            Paint paint = new Paint();
            f = 2.0f;
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            paint.setAntiAlias(true);
            paint.setColor(1711276032);
            float f2 = i12;
            canvas.drawOval(new RectF(0.0f, 0.0f, f2, f2), paint);
            Path pathCreatePathFromPathData = PathParser.createPathFromPathData("M 0.263 0.264 C 0.615 -0.088 1.185 -0.088 1.536 0.264 L 7 5.727 L 12.463 0.264 C 12.815 -0.088 13.385 -0.088 13.736 0.264 C 14.088 0.615 14.088 1.185 13.736 1.536 L 8.272 7 L 13.736 12.464 C 14.088 12.815 14.088 13.385 13.736 13.736 C 13.385 14.088 12.815 14.088 12.463 13.736 L 7 8.273 L 1.536 13.736 C 1.185 14.088 0.615 14.088 0.263 13.736 C -0.088 13.385 -0.088 12.815 0.263 12.464 L 5.727 7 L 0.263 1.536 C -0.088 1.185 -0.088 0.615 0.263 0.264 Z");
            RectF rectF = new RectF();
            pathCreatePathFromPathData.computeBounds(rectF, true);
            Matrix matrix = new Matrix();
            DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
            matrix.postTranslate(-rectF.left, -rectF.top);
            float f3 = displayMetrics.density;
            matrix.postScale(f3, f3);
            matrix.postTranslate((f2 - (rectF.width() * f3)) / 2.0f, (f2 - (rectF.height() * f3)) / 2.0f);
            pathCreatePathFromPathData.transform(matrix);
            Paint paint2 = new Paint();
            paint2.setColor(-1);
            paint2.setAntiAlias(true);
            paint2.setStyle(Paint.Style.FILL);
            canvas.drawPath(pathCreatePathFromPathData, paint2);
        }
        e6Var2.a(bitmapCreateBitmap, false);
        this.c = e6Var2;
        l3a.n(e6Var2, "close_button");
        addView(e6Var2);
        e6 e6Var3 = new e6(context);
        ko9 ko9Var2 = this.g;
        int i13 = ko9.k;
        SparseIntArray sparseIntArray2 = ko9Var2.a;
        int i14 = sparseIntArray2.get(i13);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(sparseIntArray2.get(ko9.C), sparseIntArray2.get(ko9.D));
        e6Var3.setPadding(i14 / 2, i14, i14, i14);
        e6Var3.setLayoutParams(layoutParams4);
        e6Var3.setVisibility(8);
        int i15 = sparseIntArray2.get(ko9.w);
        Context context3 = getContext();
        try {
            bitmapCreateBitmap2 = Bitmap.createBitmap(i15, i15, Bitmap.Config.ARGB_8888);
            bitmap = null;
        } catch (OutOfMemoryError unused2) {
            bitmap = null;
            y14.r(null, "BaseResources: Cannot build icon - OOME");
            bitmapCreateBitmap2 = null;
        }
        if (bitmapCreateBitmap2 == null) {
            bitmap2 = bitmap;
        } else {
            Paint paint3 = new Paint();
            Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
            paint3.setAntiAlias(true);
            paint3.setColor(1711276032);
            float f4 = i15;
            canvas2.drawOval(new RectF(0.0f, 0.0f, f4, f4), paint3);
            Path pathCreatePathFromPathData2 = PathParser.createPathFromPathData("M14.25 5C13.8358 5 13.5 5.33579 13.5 5.75V8.92779L6.38414 5.1129C5.75794 4.77719 5 5.23084 5 5.94136V14.0587C5 14.7692 5.75794 15.2228 6.38414 14.8871L13.5 11.0722V14.2498C13.5 14.664 13.8358 14.9998 14.25 14.9998C14.6642 14.9998 15 14.664 15 14.2498V5.75C15 5.33579 14.6642 5 14.25 5Z");
            RectF rectF2 = new RectF();
            pathCreatePathFromPathData2.computeBounds(rectF2, true);
            Matrix matrix2 = new Matrix();
            DisplayMetrics displayMetrics2 = context3.getResources().getDisplayMetrics();
            matrix2.postTranslate(-rectF2.left, -rectF2.top);
            float f5 = displayMetrics2.density;
            matrix2.postScale(f5, f5);
            matrix2.postTranslate((f4 - (rectF2.width() * f5)) / f, (f4 - (rectF2.height() * f5)) / f);
            pathCreatePathFromPathData2.transform(matrix2);
            Paint paint4 = new Paint();
            paint4.setColor(-1);
            paint4.setAntiAlias(true);
            paint4.setStyle(Paint.Style.FILL);
            canvas2.drawPath(pathCreatePathFromPathData2, paint4);
            bitmap2 = bitmapCreateBitmap2;
        }
        e6Var3.a(bitmap2, false);
        this.d = e6Var3;
        l3a.n(e6Var3, "skip_button");
        addView(e6Var3);
    }

    public e6 getAdChoicesButton() {
        return this.b;
    }

    public e6 getCloseButton() {
        return this.c;
    }

    public TextView getProgress() {
        return this.f;
    }

    public RelativeLayout getProgressFrame() {
        return this.e;
    }

    public e6 getSkipButton() {
        return this.d;
    }
}
