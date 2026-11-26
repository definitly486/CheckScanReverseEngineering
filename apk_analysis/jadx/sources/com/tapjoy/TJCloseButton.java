package com.tapjoy;

import android.content.Context;
import android.os.Handler;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes4.dex */
public class TJCloseButton extends ImageButton {
    public boolean a;
    public boolean b;

    public enum ClosePosition {
        TOP_LEFT,
        TOP_CENTER,
        TOP_RIGHT,
        CENTER,
        BOTTOM_LEFT,
        BOTTOM_CENTER,
        BOTTOM_RIGHT;

        ClosePosition() {
        }
    }

    public TJCloseButton(Context context, ClosePosition closePosition) {
        super(context);
        this.a = true;
        float density = TJDeviceUtils.INSTANCE.getDensity(getContext());
        setImageBitmap(TapjoyIcons.getCloseCircularImage(density));
        setScaleType(ImageView.ScaleType.FIT_XY);
        setBackgroundColor(ViewCompat.MEASURED_SIZE_MASK);
        int i = (int) (((double) density) * 75.0d);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        switch (y.a[closePosition.ordinal()]) {
            case 1:
                layoutParams.addRule(10);
                layoutParams.addRule(9);
                break;
            case 2:
                layoutParams.addRule(10);
                layoutParams.addRule(14);
                break;
            case 3:
                layoutParams.addRule(10);
                layoutParams.addRule(11);
                break;
            case 4:
                layoutParams.addRule(13);
                break;
            case 5:
                layoutParams.addRule(12);
                layoutParams.addRule(9);
                break;
            case 6:
                layoutParams.addRule(12);
                layoutParams.addRule(14);
                break;
            case 7:
                layoutParams.addRule(12);
                layoutParams.addRule(11);
                break;
        }
        int i2 = (int) (density * (-10.0f));
        layoutParams.setMargins(0, i2, i2, 0);
        setLayoutParams(layoutParams);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        setAlpha(0.0f);
        setVisibility(0);
        this.b = true;
        setClickable(false);
        new Handler().postDelayed(new x(this), 2000L);
    }

    public void setClickableRequested(boolean z) {
        this.a = z;
        if (this.b) {
            return;
        }
        setClickable(z);
    }

    public TJCloseButton(Context context) {
        this(context, ClosePosition.TOP_RIGHT);
    }
}
