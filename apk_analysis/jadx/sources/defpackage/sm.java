package defpackage;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;

/* JADX INFO: loaded from: classes3.dex */
public final class sm {
    public static final FastOutSlowInInterpolator a;

    static {
        new LinearInterpolator();
        a = new FastOutSlowInInterpolator();
        new DecelerateInterpolator();
    }
}
