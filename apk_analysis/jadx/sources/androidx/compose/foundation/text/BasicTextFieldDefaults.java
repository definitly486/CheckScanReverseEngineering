package androidx.compose.foundation.text;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;

/* JADX INFO: loaded from: classes.dex */
final class BasicTextFieldDefaults {
    public static final BasicTextFieldDefaults INSTANCE = new BasicTextFieldDefaults();
    private static final SolidColor CursorBrush = new SolidColor(Color.Companion.m6258getBlack0d7_KjU(), null);

    private BasicTextFieldDefaults() {
    }

    public final SolidColor getCursorBrush() {
        return CursorBrush;
    }
}
