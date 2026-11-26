package yads;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b9 {
    public static final GradientDrawable a;

    static {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Color.parseColor("#ff303030"), Color.parseColor("#ff181818"), Color.parseColor("#ff000000")});
        gradientDrawable.setCornerRadius(0.0f);
        a = gradientDrawable;
    }
}
