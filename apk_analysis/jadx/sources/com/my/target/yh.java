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
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.graphics.PathParser;
import defpackage.ko9;
import defpackage.y14;
import defpackage.yu9;

/* JADX INFO: loaded from: classes4.dex */
public class yh extends FrameLayout {
    public final zh b;
    public final FrameLayout c;

    public yh(Context context) {
        Bitmap bitmapCreateBitmap;
        super(context);
        yu9 yu9Var = new yu9(context);
        ko9 ko9Var = new ko9(context);
        int i = yu9.x;
        SparseIntArray sparseIntArray = yu9Var.a;
        int i2 = sparseIntArray.get(i);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(i2);
        int i3 = ko9.n;
        SparseIntArray sparseIntArray2 = ko9Var.a;
        gradientDrawable.setCornerRadius(sparseIntArray2.get(i3));
        setBackground(gradientDrawable);
        setClipToOutline(true);
        int i4 = sparseIntArray2.get(ko9.G);
        setLayoutParams(new FrameLayout.LayoutParams(i4, i4));
        zh zhVar = new zh(context);
        zhVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.b = zhVar;
        addView(zhVar);
        FrameLayout frameLayout = new FrameLayout(context);
        int i5 = sparseIntArray2.get(ko9.t);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i5, i5);
        layoutParams.gravity = 8388659;
        int i6 = sparseIntArray2.get(ko9.g);
        layoutParams.setMargins(i6, i6, 0, 0);
        frameLayout.setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(sparseIntArray.get(yu9.i));
        gradientDrawable2.setCornerRadius(sparseIntArray2.get(ko9.x));
        frameLayout.setBackground(gradientDrawable2);
        TextView textView = new TextView(context);
        textView.setText("%");
        textView.setTextColor(-1);
        textView.setTextSize(sparseIntArray2.get(ko9.R));
        textView.setGravity(17);
        frameLayout.addView(textView);
        addView(frameLayout);
        FrameLayout frameLayout2 = new FrameLayout(context);
        int i7 = sparseIntArray.get(yu9.m);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        gradientDrawable3.setShape(0);
        gradientDrawable3.setColor(i7);
        gradientDrawable3.setCornerRadius(sparseIntArray2.get(i3));
        frameLayout2.setBackground(gradientDrawable3);
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.c = frameLayout2;
        zh zhVar2 = new zh(context);
        int i8 = sparseIntArray2.get(ko9.v);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i8, i8);
        layoutParams2.gravity = 17;
        zhVar2.setLayoutParams(layoutParams2);
        Bitmap bitmap = null;
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(i8, i8, Bitmap.Config.ARGB_8888);
        } catch (OutOfMemoryError unused) {
            y14.r(null, "BaseResources: Cannot build icon - OOME");
            bitmapCreateBitmap = null;
        }
        if (bitmapCreateBitmap != null) {
            Path pathCreatePathFromPathData = PathParser.createPathFromPathData("M5.14631 3.63426C5.90846 3.22666 6.65813 3.1 8.22778 3.1H10.1C10.5971 3.1 11 3.50294 11 4C11 4.49705 10.5971 4.9 10.1 4.9H8.22778C6.74111 4.9 6.35717 5.02794 5.99519 5.22153C5.65934 5.40114 5.40115 5.65934 5.22154 5.99518C5.02795 6.35717 4.90001 6.7411 4.90001 8.22777V15.7722C4.90001 17.2589 5.02795 17.6428 5.22154 18.0048C5.40115 18.3407 5.65934 18.5989 5.99519 18.7785C6.35717 18.9721 6.74111 19.1 8.22778 19.1H15.7722C17.2589 19.1 17.6428 18.9721 18.0048 18.7785C18.3407 18.5989 18.5989 18.3407 18.7785 18.0048C18.9721 17.6428 19.1 17.2589 19.1 15.7722V13.9C19.1 13.4029 19.5029 13 20 13C20.4971 13 20.9 13.4029 20.9 13.9V15.7722C20.9 17.3419 20.7733 18.0915 20.3657 18.8537C20.0184 19.5032 19.5032 20.0184 18.8537 20.3657C18.0915 20.7733 17.3419 20.9 15.7722 20.9H8.22778C6.65813 20.9 5.90847 20.7733 5.14631 20.3657C4.49678 20.0184 3.98164 19.5032 3.63427 18.8537C3.22667 18.0915 3.10001 17.3419 3.10001 15.7722V8.22777C3.10001 6.65812 3.22667 5.90846 3.63427 5.14631C3.98165 4.49678 4.49678 3.98164 5.14631 3.63426Z");
            Path pathCreatePathFromPathData2 = PathParser.createPathFromPathData("M14 4C14 3.50294 14.403 3.1 14.9 3.1H20C20.4971 3.1 20.9 3.50294 20.9 4V9.1C20.9 9.59705 20.4971 10 20 10C19.503 10 19.1 9.59705 19.1 9.1V6.17279L12.5364 12.7364C12.185 13.0879 11.6151 13.0879 11.2636 12.7364C10.9122 12.3849 10.9122 11.8151 11.2636 11.4636L17.8272 4.9H14.9C14.403 4.9 14 4.49705 14 4Z");
            RectF rectF = new RectF();
            pathCreatePathFromPathData.computeBounds(rectF, true);
            pathCreatePathFromPathData2.computeBounds(rectF, true);
            Matrix matrix = new Matrix();
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            matrix.postTranslate(-rectF.left, -rectF.top);
            float f = displayMetrics.density;
            matrix.postScale(f, f);
            float f2 = i8;
            matrix.postTranslate((f2 - (rectF.width() * f)) / 2.0f, (f2 - (rectF.height() * f)) / 2.0f);
            pathCreatePathFromPathData.transform(matrix);
            pathCreatePathFromPathData2.transform(matrix);
            Paint paint = new Paint();
            paint.setColor(-1);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.FILL);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.drawPath(pathCreatePathFromPathData, paint);
            canvas.drawPath(pathCreatePathFromPathData2, paint);
            bitmap = bitmapCreateBitmap;
        }
        zhVar2.setImageBitmap(bitmap);
        frameLayout2.addView(zhVar2);
        addView(frameLayout2);
    }

    public zh getAdImageView() {
        return this.b;
    }

    public FrameLayout getSharedContainer() {
        return this.c;
    }
}
