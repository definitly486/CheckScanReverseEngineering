package androidx.window.layout.util;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;

/* JADX INFO: loaded from: classes3.dex */
final class BoundsHelperApi24Impl implements BoundsHelper {
    public static final BoundsHelperApi24Impl INSTANCE = new BoundsHelperApi24Impl();

    private BoundsHelperApi24Impl() {
    }

    @Override // androidx.window.layout.util.BoundsHelper
    public Rect currentWindowBounds(Activity activity) {
        activity.getClass();
        Rect rect = new Rect();
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        defaultDisplay.getRectSize(rect);
        if (!ActivityCompatHelperApi24.INSTANCE.isInMultiWindowMode(activity)) {
            Point realSizeForDisplay = DisplayHelper.INSTANCE.getRealSizeForDisplay(defaultDisplay);
            int navigationBarHeight = BoundsHelperKt.getNavigationBarHeight(activity);
            int i = rect.bottom;
            if (i + navigationBarHeight == realSizeForDisplay.y) {
                rect.bottom = i + navigationBarHeight;
                return rect;
            }
            int i2 = rect.right;
            if (i2 + navigationBarHeight == realSizeForDisplay.x) {
                rect.right = i2 + navigationBarHeight;
            }
        }
        return rect;
    }

    @Override // androidx.window.layout.util.BoundsHelper
    public Rect maximumWindowBounds(Context context) {
        context.getClass();
        return BoundsHelperApi16Impl.INSTANCE.maximumWindowBounds(context);
    }
}
