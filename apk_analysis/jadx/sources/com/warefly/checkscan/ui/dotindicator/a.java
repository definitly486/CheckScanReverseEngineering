package com.warefly.checkscan.ui.dotindicator;

import android.animation.ArgbEvaluator;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import defpackage.gq2;
import defpackage.gw5;
import defpackage.i8;
import defpackage.ie9;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends gw5 {
    public final /* synthetic */ DotsIndicator c;

    public a(DotsIndicator dotsIndicator) {
        this.c = dotsIndicator;
        this.a = -1;
        this.b = -1;
    }

    @Override // defpackage.gw5
    public final int a() {
        return this.c.b.size();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00c6  */
    @Override // defpackage.gw5
    public final void c(float f, int i, int i2) {
        DotsIndicator dotsIndicator = this.c;
        ArgbEvaluator argbEvaluator = dotsIndicator.p;
        ArrayList<ImageView> arrayList = dotsIndicator.b;
        ImageView imageView = arrayList.get(i);
        imageView.getClass();
        ImageView imageView2 = imageView;
        if (dotsIndicator.n == 0) {
            ie9.b(imageView2, (int) i8.b(1.0f, f, (dotsIndicator.k - 1.0f) * dotsIndicator.getDotsSize(), dotsIndicator.getDotsSize()));
        }
        arrayList.getClass();
        if (i2 >= 0 && i2 < arrayList.size()) {
            ImageView imageView3 = arrayList.get(i2);
            imageView3.getClass();
            ImageView imageView4 = imageView3;
            if (dotsIndicator.n == 0) {
                ie9.b(imageView4, (int) (((dotsIndicator.k - 1.0f) * dotsIndicator.getDotsSize() * f) + dotsIndicator.getDotsSize()));
            }
            Drawable background = imageView2.getBackground();
            background.getClass();
            gq2 gq2Var = (gq2) background;
            Drawable background2 = imageView4.getBackground();
            background2.getClass();
            gq2 gq2Var2 = (gq2) background2;
            if (dotsIndicator.getSelectedDotColor() != dotsIndicator.getDotsColor()) {
                Object objEvaluate = argbEvaluator.evaluate(f, Integer.valueOf(dotsIndicator.getSelectedDotColor()), Integer.valueOf(dotsIndicator.getDotsColor()));
                objEvaluate.getClass();
                int iIntValue = ((Integer) objEvaluate).intValue();
                Object objEvaluate2 = argbEvaluator.evaluate(f, Integer.valueOf(dotsIndicator.getDotsColor()), Integer.valueOf(dotsIndicator.getSelectedDotColor()));
                objEvaluate2.getClass();
                gq2Var2.setColor(((Integer) objEvaluate2).intValue());
                if (dotsIndicator.l) {
                    BaseDotsIndicator.a pager = dotsIndicator.getPager();
                    if (i <= (pager != null ? pager.a() : 0)) {
                        gq2Var.setColor(dotsIndicator.getSelectedDotColor());
                    } else {
                        gq2Var.setColor(iIntValue);
                    }
                } else {
                    gq2Var.setColor(iIntValue);
                }
            }
        }
        dotsIndicator.invalidate();
    }

    @Override // defpackage.gw5
    public final void d(int i) {
        DotsIndicator dotsIndicator = this.c;
        ImageView imageView = dotsIndicator.b.get(i);
        imageView.getClass();
        ie9.b(imageView, (int) dotsIndicator.getDotsSize());
    }
}
