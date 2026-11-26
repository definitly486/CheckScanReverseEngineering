package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class DividerTokens {
    public static final int $stable = 0;
    public static final DividerTokens INSTANCE = new DividerTokens();
    private static final ColorSchemeKeyTokens Color = ColorSchemeKeyTokens.OutlineVariant;
    private static final float Thickness = Dp.m9042constructorimpl(1.0f);

    private DividerTokens() {
    }

    public final ColorSchemeKeyTokens getColor() {
        return Color;
    }

    /* JADX INFO: renamed from: getThickness-D9Ej5fM, reason: not valid java name */
    public final float m4704getThicknessD9Ej5fM() {
        return Thickness;
    }
}
