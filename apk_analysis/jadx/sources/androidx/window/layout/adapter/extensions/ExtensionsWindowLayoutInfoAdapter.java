package androidx.window.layout.adapter.extensions;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import androidx.window.core.Bounds;
import androidx.window.extensions.layout.DisplayFoldFeature;
import androidx.window.extensions.layout.SupportedWindowFeatures;
import androidx.window.layout.FoldingFeature;
import androidx.window.layout.HardwareFoldingFeature;
import androidx.window.layout.SupportedPosture;
import androidx.window.layout.WindowLayoutInfo;
import androidx.window.layout.WindowMetrics;
import androidx.window.layout.WindowMetricsCalculatorCompat;
import defpackage.kx2;
import defpackage.n1;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class ExtensionsWindowLayoutInfoAdapter {
    public static final ExtensionsWindowLayoutInfoAdapter INSTANCE = new ExtensionsWindowLayoutInfoAdapter();

    private ExtensionsWindowLayoutInfoAdapter() {
    }

    private final boolean validBounds(WindowMetrics windowMetrics, Bounds bounds) {
        Rect bounds2 = windowMetrics.getBounds();
        if (bounds.isZero()) {
            return false;
        }
        if (bounds.getWidth() != bounds2.width() && bounds.getHeight() != bounds2.height()) {
            return false;
        }
        if (bounds.getWidth() >= bounds2.width() || bounds.getHeight() >= bounds2.height()) {
            return (bounds.getWidth() == bounds2.width() && bounds.getHeight() == bounds2.height()) ? false : true;
        }
        return false;
    }

    public final FoldingFeature translate$window_release(WindowMetrics windowMetrics, androidx.window.extensions.layout.FoldingFeature foldingFeature) {
        HardwareFoldingFeature.Type fold;
        FoldingFeature.State state;
        windowMetrics.getClass();
        foldingFeature.getClass();
        int type = foldingFeature.getType();
        if (type == 1) {
            fold = HardwareFoldingFeature.Type.Companion.getFOLD();
        } else {
            if (type != 2) {
                return null;
            }
            fold = HardwareFoldingFeature.Type.Companion.getHINGE();
        }
        int state2 = foldingFeature.getState();
        if (state2 == 1) {
            state = FoldingFeature.State.FLAT;
        } else {
            if (state2 != 2) {
                return null;
            }
            state = FoldingFeature.State.HALF_OPENED;
        }
        Rect bounds = foldingFeature.getBounds();
        bounds.getClass();
        if (!validBounds(windowMetrics, new Bounds(bounds))) {
            return null;
        }
        Rect bounds2 = foldingFeature.getBounds();
        bounds2.getClass();
        return new HardwareFoldingFeature(new Bounds(bounds2), fold, state);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final WindowLayoutInfo translate$window_release(Context context, androidx.window.extensions.layout.WindowLayoutInfo windowLayoutInfo) {
        context.getClass();
        windowLayoutInfo.getClass();
        WindowMetricsCalculatorCompat windowMetricsCalculatorCompat = new WindowMetricsCalculatorCompat(null, 1, 0 == true ? 1 : 0);
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            return translate$window_release(windowMetricsCalculatorCompat.computeCurrentWindowMetrics(context), windowLayoutInfo);
        }
        if (i >= 29 && (context instanceof Activity)) {
            return translate$window_release(windowMetricsCalculatorCompat.computeCurrentWindowMetrics((Activity) context), windowLayoutInfo);
        }
        n1.e("Display Features are only supported after Q. Display features for non-Activity contexts are not expected to be reported on devices running Q.");
        return null;
    }

    public final WindowLayoutInfo translate$window_release(WindowMetrics windowMetrics, androidx.window.extensions.layout.WindowLayoutInfo windowLayoutInfo) {
        windowMetrics.getClass();
        windowLayoutInfo.getClass();
        List<androidx.window.extensions.layout.FoldingFeature> displayFeatures = windowLayoutInfo.getDisplayFeatures();
        displayFeatures.getClass();
        ArrayList arrayList = new ArrayList();
        for (androidx.window.extensions.layout.FoldingFeature foldingFeature : displayFeatures) {
            FoldingFeature foldingFeatureTranslate$window_release = foldingFeature instanceof androidx.window.extensions.layout.FoldingFeature ? INSTANCE.translate$window_release(windowMetrics, foldingFeature) : null;
            if (foldingFeatureTranslate$window_release != null) {
                arrayList.add(foldingFeatureTranslate$window_release);
            }
        }
        return new WindowLayoutInfo(arrayList);
    }

    public final List<SupportedPosture> translate$window_release(SupportedWindowFeatures supportedWindowFeatures) {
        supportedWindowFeatures.getClass();
        List displayFoldFeatures = supportedWindowFeatures.getDisplayFoldFeatures();
        displayFoldFeatures.getClass();
        List list = displayFoldFeatures;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((DisplayFoldFeature) it.next()).hasProperties(new int[]{1})) {
                    return u96.h(SupportedPosture.TABLETOP);
                }
            }
        }
        return kx2.b;
    }
}
