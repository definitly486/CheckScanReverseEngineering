package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class AppBarMediumFlexibleTokens {
    public static final int $stable = 0;
    public static final AppBarMediumFlexibleTokens INSTANCE = new AppBarMediumFlexibleTokens();
    private static final float ContainerHeight = Dp.m9042constructorimpl(112.0f);
    private static final TypographyKeyTokens SubtitleFont = TypographyKeyTokens.LabelLarge;
    private static final TypographyKeyTokens TitleFont = TypographyKeyTokens.HeadlineMedium;
    private static final float LargeContainerHeight = Dp.m9042constructorimpl(136.0f);

    private AppBarMediumFlexibleTokens() {
    }

    /* JADX INFO: renamed from: getContainerHeight-D9Ej5fM, reason: not valid java name */
    public final float m4488getContainerHeightD9Ej5fM() {
        return ContainerHeight;
    }

    /* JADX INFO: renamed from: getLargeContainerHeight-D9Ej5fM, reason: not valid java name */
    public final float m4489getLargeContainerHeightD9Ej5fM() {
        return LargeContainerHeight;
    }

    public final TypographyKeyTokens getSubtitleFont() {
        return SubtitleFont;
    }

    public final TypographyKeyTokens getTitleFont() {
        return TitleFont;
    }
}
