package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class DateInputModalTokens {
    public static final int $stable = 0;
    private static final ColorSchemeKeyTokens HeaderHeadlineColor;
    private static final TypographyKeyTokens HeaderHeadlineFont;
    private static final ColorSchemeKeyTokens HeaderSupportingTextColor;
    private static final TypographyKeyTokens HeaderSupportingTextFont;
    public static final DateInputModalTokens INSTANCE = new DateInputModalTokens();
    private static final ColorSchemeKeyTokens ContainerColor = ColorSchemeKeyTokens.Surface;
    private static final float ContainerElevation = ElevationTokens.INSTANCE.m4735getLevel3D9Ej5fM();
    private static final float ContainerHeight = Dp.m9042constructorimpl(512.0f);
    private static final ShapeKeyTokens ContainerShape = ShapeKeyTokens.CornerExtraLarge;
    private static final ColorSchemeKeyTokens ContainerSurfaceTintLayerColor = ColorSchemeKeyTokens.SurfaceTint;
    private static final float ContainerWidth = Dp.m9042constructorimpl(328.0f);
    private static final float HeaderContainerHeight = Dp.m9042constructorimpl(120.0f);
    private static final float HeaderContainerWidth = Dp.m9042constructorimpl(328.0f);

    static {
        ColorSchemeKeyTokens colorSchemeKeyTokens = ColorSchemeKeyTokens.OnSurfaceVariant;
        HeaderHeadlineColor = colorSchemeKeyTokens;
        HeaderHeadlineFont = TypographyKeyTokens.HeadlineLarge;
        HeaderSupportingTextColor = colorSchemeKeyTokens;
        HeaderSupportingTextFont = TypographyKeyTokens.LabelLarge;
    }

    private DateInputModalTokens() {
    }

    public final ColorSchemeKeyTokens getContainerColor() {
        return ContainerColor;
    }

    /* JADX INFO: renamed from: getContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4680getContainerElevationD9Ej5fM() {
        return ContainerElevation;
    }

    /* JADX INFO: renamed from: getContainerHeight-D9Ej5fM, reason: not valid java name */
    public final float m4681getContainerHeightD9Ej5fM() {
        return ContainerHeight;
    }

    public final ShapeKeyTokens getContainerShape() {
        return ContainerShape;
    }

    public final ColorSchemeKeyTokens getContainerSurfaceTintLayerColor() {
        return ContainerSurfaceTintLayerColor;
    }

    /* JADX INFO: renamed from: getContainerWidth-D9Ej5fM, reason: not valid java name */
    public final float m4682getContainerWidthD9Ej5fM() {
        return ContainerWidth;
    }

    /* JADX INFO: renamed from: getHeaderContainerHeight-D9Ej5fM, reason: not valid java name */
    public final float m4683getHeaderContainerHeightD9Ej5fM() {
        return HeaderContainerHeight;
    }

    /* JADX INFO: renamed from: getHeaderContainerWidth-D9Ej5fM, reason: not valid java name */
    public final float m4684getHeaderContainerWidthD9Ej5fM() {
        return HeaderContainerWidth;
    }

    public final ColorSchemeKeyTokens getHeaderHeadlineColor() {
        return HeaderHeadlineColor;
    }

    public final TypographyKeyTokens getHeaderHeadlineFont() {
        return HeaderHeadlineFont;
    }

    public final ColorSchemeKeyTokens getHeaderSupportingTextColor() {
        return HeaderSupportingTextColor;
    }

    public final TypographyKeyTokens getHeaderSupportingTextFont() {
        return HeaderSupportingTextFont;
    }
}
