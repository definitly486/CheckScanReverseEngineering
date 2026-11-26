package androidx.window.layout.util;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;

/* JADX INFO: loaded from: classes3.dex */
public interface BoundsHelper {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final String TAG = "BoundsHelper";

        private Companion() {
        }

        public final BoundsHelper getInstance() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                return BoundsHelperApi30Impl.INSTANCE;
            }
            if (i >= 29) {
                return BoundsHelperApi29Impl.INSTANCE;
            }
            return i >= 28 ? BoundsHelperApi28Impl.INSTANCE : BoundsHelperApi24Impl.INSTANCE;
        }

        public final String getTAG() {
            return TAG;
        }
    }

    Rect currentWindowBounds(Activity activity);

    Rect maximumWindowBounds(Context context);
}
