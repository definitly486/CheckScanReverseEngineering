package androidx.window.layout.util;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.inputmethodservice.InputMethodService;
import android.view.Display;
import android.view.WindowManager;
import androidx.window.core.Bounds;
import androidx.window.layout.WindowMetrics;
import defpackage.fg;

/* JADX INFO: loaded from: classes3.dex */
public final class WindowMetricsCompatHelperBaseImpl implements WindowMetricsCompatHelper {
    public static final WindowMetricsCompatHelperBaseImpl INSTANCE = new WindowMetricsCompatHelperBaseImpl();

    private WindowMetricsCompatHelperBaseImpl() {
    }

    @Override // androidx.window.layout.util.WindowMetricsCompatHelper
    public WindowMetrics currentWindowMetrics(Context context, DensityCompatHelper densityCompatHelper) {
        context.getClass();
        densityCompatHelper.getClass();
        Context contextUnwrapContext$window_release = ContextCompatHelper.INSTANCE.unwrapContext$window_release(context);
        if (contextUnwrapContext$window_release instanceof Activity) {
            return currentWindowMetrics((Activity) contextUnwrapContext$window_release, densityCompatHelper);
        }
        if (!(contextUnwrapContext$window_release instanceof InputMethodService) && !(contextUnwrapContext$window_release instanceof Application)) {
            fg.c("Must provide a UiContext or Application Context");
            return null;
        }
        Object systemService = context.getSystemService("window");
        systemService.getClass();
        DisplayHelper displayHelper = DisplayHelper.INSTANCE;
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        defaultDisplay.getClass();
        Point realSizeForDisplay = displayHelper.getRealSizeForDisplay(defaultDisplay);
        return new WindowMetrics(new Rect(0, 0, realSizeForDisplay.x, realSizeForDisplay.y), densityCompatHelper.density(context));
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
        throw new UnsupportedOperationException("translateWindowMetrics not available before API30");
    }

    @Override // androidx.window.layout.util.WindowMetricsCompatHelper
    public WindowMetrics currentWindowMetrics(Activity activity, DensityCompatHelper densityCompatHelper) {
        activity.getClass();
        densityCompatHelper.getClass();
        return new WindowMetrics(new Bounds(BoundsHelper.Companion.getInstance().currentWindowBounds(activity)), densityCompatHelper.density(activity));
    }
}
