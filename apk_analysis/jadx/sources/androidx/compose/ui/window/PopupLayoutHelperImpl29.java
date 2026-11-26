package androidx.compose.ui.window;

import android.graphics.Rect;
import android.view.View;
import defpackage.u96;

/* JADX INFO: loaded from: classes2.dex */
class PopupLayoutHelperImpl29 extends PopupLayoutHelperImpl {
    @Override // androidx.compose.ui.window.PopupLayoutHelperImpl, androidx.compose.ui.window.PopupLayoutHelper
    public void setGestureExclusionRects(View view, int i, int i2) {
        view.setSystemGestureExclusionRects(u96.k(new Rect(0, 0, i, i2)));
    }
}
