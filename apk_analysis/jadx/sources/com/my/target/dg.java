package com.my.target;

import android.R;
import android.content.Context;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.LayerDrawable;
import android.widget.ProgressBar;
import androidx.core.view.GravityCompat;
import defpackage.iq9;

/* JADX INFO: loaded from: classes4.dex */
public class dg extends ProgressBar implements iq9 {
    public dg(Context context) {
        super(context, null, R.attr.progressBarStyleHorizontal);
    }

    @Override // defpackage.iq9
    public void setColor(int i) {
        ClipDrawable clipDrawable = new ClipDrawable(new ColorDrawable(i), GravityCompat.START, 1);
        ColorDrawable colorDrawable = new ColorDrawable(0);
        LayerDrawable layerDrawable = (LayerDrawable) getProgressDrawable();
        layerDrawable.setDrawableByLayerId(R.id.background, colorDrawable);
        layerDrawable.setDrawableByLayerId(R.id.progress, clipDrawable);
        setProgressDrawable(layerDrawable);
    }

    @Override // defpackage.iq9
    public void setMaxTime(float f) {
        setMax((int) (f * 1000.0f));
    }

    @Override // defpackage.iq9
    public void setTimeChanged(float f) {
        setProgress((int) (f * 1000.0f), true);
    }

    @Override // defpackage.iq9
    public void setVisible(boolean z) {
        setVisibility(z ? 0 : 8);
    }
}
