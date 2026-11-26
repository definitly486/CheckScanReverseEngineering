package androidx.window.layout.util;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes3.dex */
final class BoundsHelperApi16Impl implements BoundsHelper {
    public static final BoundsHelperApi16Impl INSTANCE = new BoundsHelperApi16Impl();

    private BoundsHelperApi16Impl() {
    }

    @Override // androidx.window.layout.util.BoundsHelper
    public Rect currentWindowBounds(Activity activity) {
        int i;
        activity.getClass();
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        DisplayHelper displayHelper = DisplayHelper.INSTANCE;
        defaultDisplay.getClass();
        Point realSizeForDisplay = displayHelper.getRealSizeForDisplay(defaultDisplay);
        Rect rect = new Rect();
        int i2 = realSizeForDisplay.x;
        if (i2 == 0 || (i = realSizeForDisplay.y) == 0) {
            defaultDisplay.getRectSize(rect);
            return rect;
        }
        rect.right = i2;
        rect.bottom = i;
        return rect;
    }

    @Override // androidx.window.layout.util.BoundsHelper
    public Rect maximumWindowBounds(Context context) {
        context.getClass();
        Object systemService = context.getSystemService("window");
        systemService.getClass();
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        DisplayHelper displayHelper = DisplayHelper.INSTANCE;
        defaultDisplay.getClass();
        Point realSizeForDisplay = displayHelper.getRealSizeForDisplay(defaultDisplay);
        return new Rect(0, 0, realSizeForDisplay.x, realSizeForDisplay.y);
    }
}
