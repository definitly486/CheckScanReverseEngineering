package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class AppBarLargeFlexibleTokens {
    public static final int $stable = 0;
    public static final AppBarLargeFlexibleTokens INSTANCE = new AppBarLargeFlexibleTokens();
    private static final float ContainerHeight = Dp.m9042constructorimpl(120.0f);
    private static final TypographyKeyTokens SubtitleFont = TypographyKeyTokens.TitleMedium;
    private static final TypographyKeyTokens TitleFont = TypographyKeyTokens.DisplaySmall;
    private static final float LargeContainerHeight = Dp.m9042constructorimpl(152.0f);

    private AppBarLargeFlexibleTokens() {
    }

    /* JADX INFO: renamed from: getContainerHeight-D9Ej5fM, reason: not valid java name */
    public final float m4485getContainerHeightD9Ej5fM() {
        return ContainerHeight;
    }

    /* JADX INFO: renamed from: getLargeContainerHeight-D9Ej5fM, reason: not valid java name */
    public final float m4486getLargeContainerHeightD9Ej5fM() {
        return LargeContainerHeight;
    }

    public final TypographyKeyTokens getSubtitleFont() {
        return SubtitleFont;
    }

    public final TypographyKeyTokens getTitleFont() {
        return TitleFont;
    }
}
