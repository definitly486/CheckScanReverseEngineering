package yads;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearSmoothScroller;

/* JADX INFO: loaded from: classes3.dex */
public final class ei2 extends LinearSmoothScroller {
    public final float a;

    public ei2(Context context) {
        super(context);
        this.a = 50.0f;
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    public final float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return this.a / displayMetrics.densityDpi;
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    public final int getHorizontalSnapPreference() {
        return -1;
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    public final int getVerticalSnapPreference() {
        return -1;
    }
}
