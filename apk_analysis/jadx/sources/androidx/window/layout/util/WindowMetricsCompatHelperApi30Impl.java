package androidx.window.layout.util;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.WindowManager;
import androidx.window.core.Bounds;
import androidx.window.layout.WindowMetrics;

/* JADX INFO: loaded from: classes3.dex */
public final class WindowMetricsCompatHelperApi30Impl implements WindowMetricsCompatHelper {
    public static final WindowMetricsCompatHelperApi30Impl INSTANCE = new WindowMetricsCompatHelperApi30Impl();

    private WindowMetricsCompatHelperApi30Impl() {
    }

    @Override // androidx.window.layout.util.WindowMetricsCompatHelper
    public WindowMetrics currentWindowMetrics(Context context, DensityCompatHelper densityCompatHelper) {
        context.getClass();
        densityCompatHelper.getClass();
        WindowManager windowManager = (WindowManager) context.getSystemService(WindowManager.class);
        float f = context.getResources().getDisplayMetrics().density;
        Rect bounds = windowManager.getCurrentWindowMetrics().getBounds();
        bounds.getClass();
        return new WindowMetrics(bounds, f);
    }

    @Override // androidx.window.layout.util.WindowMetricsCompatHelper
    public WindowMetrics maximumWindowMetrics(Context context, DensityCompatHelper densityCompatHelper) {
        context.getClass();
        densityCompatHelper.getClass();
        return new WindowMetrics(new Bounds(BoundsHelper.Companion.getInstance().maximumWindowBounds(context)), densityCompatHelper.density(context));
    }

    @Override // androidx.window.layout.util.WindowMetricsCompatHelper
    public WindowMetrics translateWindowMetrics(android.view.WindowMetrics windowMetrics, float f) {
        windowMetrics.getClass();
        Rect bounds = windowMetrics.getBounds();
        bounds.getClass();
        return new WindowMetrics(bounds, f);
    }

    @Override // androidx.window.layout.util.WindowMetricsCompatHelper
    public WindowMetrics currentWindowMetrics(Activity activity, DensityCompatHelper densityCompatHelper) {
        activity.getClass();
        densityCompatHelper.getClass();
        return new WindowMetrics(new Bounds(BoundsHelper.Companion.getInstance().currentWindowBounds(activity)), densityCompatHelper.density(activity));
    }
}
