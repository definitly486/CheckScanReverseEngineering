package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class SearchViewTokens {
    public static final int $stable = 0;
    private static final ColorSchemeKeyTokens HeaderInputTextColor;
    private static final TypographyKeyTokens HeaderInputTextFont;
    private static final ColorSchemeKeyTokens HeaderLeadingIconColor;
    private static final ColorSchemeKeyTokens HeaderSupportingTextColor;
    private static final TypographyKeyTokens HeaderSupportingTextFont;
    private static final ColorSchemeKeyTokens HeaderTrailingIconColor;
    public static final SearchViewTokens INSTANCE = new SearchViewTokens();
    private static final ColorSchemeKeyTokens ContainerColor = ColorSchemeKeyTokens.SurfaceContainerHigh;
    private static final float ContainerElevation = ElevationTokens.INSTANCE.m4735getLevel3D9Ej5fM();
    private static final ColorSchemeKeyTokens DividerColor = ColorSchemeKeyTokens.Outline;
    private static final ShapeKeyTokens DockedContainerShape = ShapeKeyTokens.CornerExtraLarge;
    private static final float DockedHeaderContainerHeight = Dp.m9042constructorimpl(56.0f);
    private static final ShapeKeyTokens FullScreenContainerShape = ShapeKeyTokens.CornerNone;
    private static final float FullScreenHeaderContainerHeight = Dp.m9042constructorimpl(72.0f);

    static {
        ColorSchemeKeyTokens colorSchemeKeyTokens = ColorSchemeKeyTokens.OnSurface;
        HeaderInputTextColor = colorSchemeKeyTokens;
        TypographyKeyTokens typographyKeyTokens = TypographyKeyTokens.BodyLarge;
        HeaderInputTextFont = typographyKeyTokens;
        HeaderLeadingIconColor = colorSchemeKeyTokens;
        ColorSchemeKeyTokens colorSchemeKeyTokens2 = ColorSchemeKeyTokens.OnSurfaceVariant;
        HeaderSupportingTextColor = colorSchemeKeyTokens2;
        HeaderSupportingTextFont = typographyKeyTokens;
        HeaderTrailingIconColor = colorSchemeKeyTokens2;
    }

    private SearchViewTokens() {
    }

    public final ColorSchemeKeyTokens getContainerColor() {
        return ContainerColor;
    }

    /* JADX INFO: renamed from: getContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m5079getContainerElevationD9Ej5fM() {
        return ContainerElevation;
    }

    public final ColorSchemeKeyTokens getDividerColor() {
        return DividerColor;
    }

    public final ShapeKeyTokens getDockedContainerShape() {
        return DockedContainerShape;
    }

    /* JADX INFO: renamed from: getDockedHeaderContainerHeight-D9Ej5fM, reason: not valid java name */
    public final float m5080getDockedHeaderContainerHeightD9Ej5fM() {
        return DockedHeaderContainerHeight;
    }

    public final ShapeKeyTokens getFullScreenContainerShape() {
        return FullScreenContainerShape;
    }

    /* JADX INFO: renamed from: getFullScreenHeaderContainerHeight-D9Ej5fM, reason: not valid java name */
    public final float m5081getFullScreenHeaderContainerHeightD9Ej5fM() {
        return FullScreenHeaderContainerHeight;
    }

    public final ColorSchemeKeyTokens getHeaderInputTextColor() {
        return HeaderInputTextColor;
    }

    public final TypographyKeyTokens getHeaderInputTextFont() {
        return HeaderInputTextFont;
    }

    public final ColorSchemeKeyTokens getHeaderLeadingIconColor() {
        return HeaderLeadingIconColor;
    }

    public final ColorSchemeKeyTokens getHeaderSupportingTextColor() {
        return HeaderSupportingTextColor;
    }

    public final TypographyKeyTokens getHeaderSupportingTextFont() {
        return HeaderSupportingTextFont;
    }

    public final ColorSchemeKeyTokens getHeaderTrailingIconColor() {
        return HeaderTrailingIconColor;
    }
}
