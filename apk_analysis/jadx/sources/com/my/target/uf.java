package com.my.target;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.SparseIntArray;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.ProgressBar;
import androidx.core.view.GravityCompat;
import defpackage.c9a;
import defpackage.ko9;
import defpackage.yu9;

/* JADX INFO: loaded from: classes4.dex */
public class uf extends ProgressBar implements c9a {
    public uf(Context context) {
        super(context, null, R.style.Widget.ProgressBar.Horizontal);
        ko9 ko9Var = new ko9(context);
        yu9 yu9Var = new yu9(context);
        setLayoutParams(new ViewGroup.LayoutParams(-1, ko9Var.a.get(ko9.f)));
        int i = yu9.h;
        SparseIntArray sparseIntArray = yu9Var.a;
        int i2 = sparseIntArray.get(i);
        int i3 = sparseIntArray.get(yu9.g);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
        shapeDrawable.getPaint().setColor(i3);
        ShapeDrawable shapeDrawable2 = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
        shapeDrawable2.getPaint().setColor(i2);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{shapeDrawable, new ClipDrawable(shapeDrawable2, GravityCompat.START, 1)});
        layerDrawable.setId(0, R.id.background);
        layerDrawable.setId(1, R.id.progress);
        setProgressDrawable(layerDrawable);
        setIndeterminate(false);
    }

    @Override // defpackage.c9a
    public void setMaxTime(float f) {
        setMax((int) (f * 1000.0f));
    }

    @Override // defpackage.c9a
    public void setTimeChanged(float f) {
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this, "progress", getProgress(), (int) (f * 1000.0f));
        objectAnimatorOfInt.setDuration(500L);
        objectAnimatorOfInt.setInterpolator(new DecelerateInterpolator());
        objectAnimatorOfInt.start();
    }

    public void setVisible(boolean z) {
        setVisibility(z ? 0 : 8);
    }
}
