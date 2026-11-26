package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class AppBarSmallTokens {
    public static final int $stable = 0;
    public static final AppBarSmallTokens INSTANCE = new AppBarSmallTokens();
    private static final float ContainerHeight = Dp.m9042constructorimpl(64.0f);
    private static final TypographyKeyTokens SubtitleFont = TypographyKeyTokens.LabelMedium;
    private static final TypographyKeyTokens TitleFont = TypographyKeyTokens.TitleLarge;

    private AppBarSmallTokens() {
    }

    /* JADX INFO: renamed from: getContainerHeight-D9Ej5fM, reason: not valid java name */
    public final float m4491getContainerHeightD9Ej5fM() {
        return ContainerHeight;
    }

    public final TypographyKeyTokens getSubtitleFont() {
        return SubtitleFont;
    }

    public final TypographyKeyTokens getTitleFont() {
        return TitleFont;
    }
}
