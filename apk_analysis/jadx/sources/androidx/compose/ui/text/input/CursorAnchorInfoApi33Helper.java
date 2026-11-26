package androidx.compose.ui.text.input;

import android.view.inputmethod.CursorAnchorInfo;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import defpackage.v62;

/* JADX INFO: loaded from: classes2.dex */
final class CursorAnchorInfoApi33Helper {
    public static final CursorAnchorInfoApi33Helper INSTANCE = new CursorAnchorInfoApi33Helper();

    private CursorAnchorInfoApi33Helper() {
    }

    public static final CursorAnchorInfo.Builder setEditorBoundsInfo(CursorAnchorInfo.Builder builder, Rect rect) {
        return builder.setEditorBoundsInfo(v62.a().setEditorBounds(RectHelper_androidKt.toAndroidRectF(rect)).setHandwritingBounds(RectHelper_androidKt.toAndroidRectF(rect)).build());
    }
}
