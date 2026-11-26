package androidx.window.layout.util;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.view.WindowMetrics;

/* JADX INFO: loaded from: classes3.dex */
public interface DensityCompatHelper {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final DensityCompatHelper getInstance() {
            return Build.VERSION.SDK_INT >= 34 ? DensityCompatHelperApi34Impl.INSTANCE : DensityCompatHelperBaseImpl.INSTANCE;
        }
    }

    float density(Context context);

    float density(Configuration configuration, WindowMetrics windowMetrics);
}
