package androidx.compose.foundation.text;

import androidx.compose.ui.input.pointer.PointerIcon;
import androidx.compose.ui.input.pointer.PointerIcon_androidKt;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* JADX INFO: loaded from: classes2.dex */
public final class TextPointerIcon_androidKt {
    private static final PointerIcon handwritingPointerIcon = PointerIcon_androidKt.PointerIcon(AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED);

    public static final PointerIcon getHandwritingPointerIcon() {
        return handwritingPointerIcon;
    }
}
