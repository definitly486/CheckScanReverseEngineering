package androidx.window.layout.util;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import androidx.window.layout.WindowMetrics;

/* JADX INFO: loaded from: classes3.dex */
public interface WindowMetricsCompatHelper {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final WindowMetricsCompatHelper getInstance() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 34) {
                return WindowMetricsCompatHelperApi34Impl.INSTANCE;
            }
            return i >= 30 ? WindowMetricsCompatHelperApi30Impl.INSTANCE : WindowMetricsCompatHelperBaseImpl.INSTANCE;
        }
    }

    WindowMetrics currentWindowMetrics(Activity activity, DensityCompatHelper densityCompatHelper);

    WindowMetrics currentWindowMetrics(Context context, DensityCompatHelper densityCompatHelper);

    WindowMetrics maximumWindowMetrics(Context context, DensityCompatHelper densityCompatHelper);

    WindowMetrics translateWindowMetrics(android.view.WindowMetrics windowMetrics, float f);
}
