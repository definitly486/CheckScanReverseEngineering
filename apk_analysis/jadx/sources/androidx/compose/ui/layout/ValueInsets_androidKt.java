package androidx.compose.ui.layout;

import androidx.core.graphics.Insets;

/* JADX INFO: loaded from: classes2.dex */
public final class ValueInsets_androidKt {
    private static final long ZeroValueInsets = ValueInsets.m7836constructorimpl(0);
    private static final long UnsetValueInsets = ValueInsets.m7836constructorimpl(-1);

    public static final long ValueInsets(Insets insets) {
        return ValueInsets.m7836constructorimpl((((long) insets.left) << 48) | (((long) insets.top) << 32) | (((long) insets.right) << 16) | ((long) insets.bottom));
    }

    public static final long getUnsetValueInsets() {
        return UnsetValueInsets;
    }

    public static final long getZeroValueInsets() {
        return ZeroValueInsets;
    }

    public static final long ValueInsets(int i, int i2, int i3, int i4) {
        return ValueInsets.m7836constructorimpl((((long) i2) << 32) | (((long) i) << 48) | (((long) i3) << 16) | ((long) i4));
    }
}
