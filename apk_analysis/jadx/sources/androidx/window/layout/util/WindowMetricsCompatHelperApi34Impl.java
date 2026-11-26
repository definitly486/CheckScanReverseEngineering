package androidx.window.layout.util;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.WindowManager;
import androidx.window.layout.WindowMetrics;

/* JADX INFO: loaded from: classes3.dex */
public final class WindowMetricsCompatHelperApi34Impl implements WindowMetricsCompatHelper {
    public static final WindowMetricsCompatHelperApi34Impl INSTANCE = new WindowMetricsCompatHelperApi34Impl();

    private WindowMetricsCompatHelperApi34Impl() {
    }

    @Override // androidx.window.layout.util.WindowMetricsCompatHelper
    public WindowMetrics currentWindowMetrics(Context context, DensityCompatHelper densityCompatHelper) {
        context.getClass();
        densityCompatHelper.getClass();
        WindowManager windowManager = context.isUiContext() ? (WindowManager) context.getSystemService(WindowManager.class) : (WindowManager) context.getApplicationContext().getSystemService(WindowManager.class);
        Rect bounds = windowManager.getCurrentWindowMetrics().getBounds();
        bounds.getClass();
        return new WindowMetrics(bounds, windowManager.getCurrentWindowMetrics().getDensity());
    }

    @Override // androidx.window.layout.util.WindowMetricsCompatHelper
    public WindowMetrics maximumWindowMetrics(Context context, DensityCompatHelper densityCompatHelper) {
        context.getClass();
        densityCompatHelper.getClass();
        return WindowMetricsCompatHelperApi30Impl.INSTANCE.maximumWindowMetrics(context, densityCompatHelper);
    }

    @Override // androidx.window.layout.util.WindowMetricsCompatHelper
    public WindowMetrics translateWindowMetrics(android.view.WindowMetrics windowMetrics, float f) {
        windowMetrics.getClass();
        Rect bounds = windowMetrics.getBounds();
        bounds.getClass();
        return new WindowMetrics(bounds, windowMetrics.getDensity());
    }

    @Override // androidx.window.layout.util.WindowMetricsCompatHelper
    public WindowMetrics currentWindowMetrics(Activity activity, DensityCompatHelper densityCompatHelper) {
        activity.getClass();
        densityCompatHelper.getClass();
        return WindowMetricsCompatHelperApi30Impl.INSTANCE.currentWindowMetrics(activity, densityCompatHelper);
    }
}
