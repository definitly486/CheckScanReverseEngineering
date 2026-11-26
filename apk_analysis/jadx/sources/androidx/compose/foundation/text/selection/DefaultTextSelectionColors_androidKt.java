package androidx.compose.foundation.text.selection;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultTextSelectionColors_androidKt {
    private static final long DefaultSelectionColor;
    private static final TextSelectionColors DefaultTextSelectionColors;

    static {
        long jColor = ColorKt.Color(4282550004L);
        DefaultSelectionColor = jColor;
        DefaultTextSelectionColors = new TextSelectionColors(jColor, Color.m6231copywmQWz5c$default(jColor, 0.4f, 0.0f, 0.0f, 0.0f, 14, null), null);
    }

    public static final TextSelectionColors getDefaultTextSelectionColors() {
        return DefaultTextSelectionColors;
    }

    public static /* synthetic */ void getDefaultTextSelectionColors$annotations() {
    }
}
