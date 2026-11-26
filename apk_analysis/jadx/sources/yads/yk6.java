package yads;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class yk6 {
    public static Rect a(View view) {
        Rect rect = new Rect();
        try {
            view.getWindowVisibleDisplayFrame(rect);
        } catch (NullPointerException unused) {
        }
        int[] iArr = {i, i};
        view.getRootView().getLocationOnScreen(iArr);
        int i = -iArr[0];
        int i2 = -iArr[1];
        rect.offset(i, i2);
        return rect;
    }
}
