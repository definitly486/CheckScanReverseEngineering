package androidx.window.layout.util;

import android.content.Context;
import android.content.res.Configuration;
import android.view.WindowMetrics;

/* JADX INFO: loaded from: classes3.dex */
final class DensityCompatHelperBaseImpl implements DensityCompatHelper {
    public static final DensityCompatHelperBaseImpl INSTANCE = new DensityCompatHelperBaseImpl();

    private DensityCompatHelperBaseImpl() {
    }

    @Override // androidx.window.layout.util.DensityCompatHelper
    public float density(Context context) {
        context.getClass();
        return context.getResources().getDisplayMetrics().density;
    }

    @Override // androidx.window.layout.util.DensityCompatHelper
    public float density(Configuration configuration, WindowMetrics windowMetrics) {
        configuration.getClass();
        windowMetrics.getClass();
        return configuration.densityDpi / 160.0f;
    }
}
